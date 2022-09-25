<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AdminNotification;
use App\Models\Deposit;
use App\Models\Ticket;
use App\Models\User;
use App\Models\UserLogin;
use App\Models\Winner;
use App\Models\Withdrawal;

use App\Models\Blog;
use App\Models\Contact;
use App\Models\Portfolio;
use App\Models\PricingPlan;
use App\Models\Service;
use App\Models\Subscriber;
use App\Models\Team;
use App\Services\CommonService;


use App\Rules\FileTypeValidate;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{

    public function dashboard()
    {

        $pageTitle = 'Dashboard';

        // User Info
        $widget['total_users'] = User::count();
        $widget['verified_users'] = User::where('status', 1)->count();
        $widget['email_unverified_users'] = User::where('ev', 0)->count();
        $widget['sms_unverified_users'] = User::where('sv', 0)->count();

        $winners = Winner::get(['win_bonus']);
        $widget['winners'] = $winners->count();
        $widget['winBonus'] = $winners->sum('win_bonus');

        $sell = Ticket::get(['total_price']);
        $widget['sell'] = $sell->count();
        $widget['sellAmo'] = $sell->sum(['total_price']);

        // Monthly Deposit & Withdraw Report Graph
        $report['months'] = collect([]);
        $report['deposit_month_amount'] = collect([]);
        $report['withdraw_month_amount'] = collect([]);


        $depositsMonth = Deposit::where('created_at', '>=', Carbon::now()->subYear())
            ->where('status', 1)
            ->selectRaw("SUM( CASE WHEN status = 1 THEN amount END) as depositAmount")
            ->selectRaw("DATE_FORMAT(created_at,'%M-%Y') as months")
            ->orderBy('created_at')
            ->groupBy('months')->get();

        $depositsMonth->map(function ($depositData) use ($report) {
            $report['months']->push($depositData->months);
            $report['deposit_month_amount']->push(showAmount($depositData->depositAmount));
        });
        $withdrawalMonth = Withdrawal::where('created_at', '>=', Carbon::now()->subYear())->where('status', 1)
            ->selectRaw("SUM( CASE WHEN status = 1 THEN amount END) as withdrawAmount")
            ->selectRaw("DATE_FORMAT(created_at,'%M-%Y') as months")
            ->orderBy('created_at')
            ->groupBy('months')->get();
        $withdrawalMonth->map(function ($withdrawData) use ($report){
            if (!in_array($withdrawData->months,$report['months']->toArray())) {
                $report['months']->push($withdrawData->months);
            }
            $report['withdraw_month_amount']->push(showAmount($withdrawData->withdrawAmount));
        });

        $months = $report['months'];

        for($i = 0; $i < $months->count(); ++$i) {
            $d_val      = Carbon::parse($months[$i]);
            if(isset($months[$i+1])){
                $d_val_next = Carbon::parse($months[$i+1]);
                if($d_val_next < $d_val){
                    $temp = $months[$i];
                    $months[$i]   = Carbon::parse($months[$i+1])->format('F-Y');
                    $months[$i+1] = Carbon::parse($temp)->format('F-Y');
                }else{
                    $months[$i]   = Carbon::parse($months[$i])->format('F-Y');
                }
            }
        }

        // Withdraw Graph
        $withdrawal = Withdrawal::where('created_at', '>=', \Carbon\Carbon::now()->subDays(30))->where('status', 1)
            ->selectRaw('sum(amount) as totalAmount')
            ->selectRaw('DATE(created_at) day')
            ->groupBy('day')->get();

        $withdrawals['per_day'] = collect([]);
        $withdrawals['per_day_amount'] = collect([]);
        $withdrawal->map(function ($withdrawItem) use ($withdrawals) {
            $withdrawals['per_day']->push(date('d M', strtotime($withdrawItem->day)));
            $withdrawals['per_day_amount']->push($withdrawItem->totalAmount + 0);
        });


        // Deposit Graph
        $deposit = Deposit::where('created_at', '>=', \Carbon\Carbon::now()->subDays(30))->where('status', 1)
            ->selectRaw('sum(amount) as totalAmount')
            ->selectRaw('DATE(created_at) day')
            ->groupBy('day')->get();
        $deposits['per_day'] = collect([]);
        $deposits['per_day_amount'] = collect([]); 
        $deposit->map(function ($depositItem) use ($deposits) {
            $deposits['per_day']->push(date('d M', strtotime($depositItem->day)));
            $deposits['per_day_amount']->push($depositItem->totalAmount + 0);
        });


        // user Browsing, Country, Operating Log
        $user_login_data = UserLogin::where('created_at', '>=', \Carbon\Carbon::now()->subDay(30))->get(['browser', 'os', 'country']);

        $chart['user_browser_counter'] = $user_login_data->groupBy('browser')->map(function ($item, $key) {
            return collect($item)->count();
        });
        $chart['user_os_counter'] = $user_login_data->groupBy('os')->map(function ($item, $key) {
            return collect($item)->count();
        });
        $chart['user_country_counter'] = $user_login_data->groupBy('country')->map(function ($item, $key) {
            return collect($item)->count();
        })->sort()->reverse()->take(5);


        $payment['total_deposit_amount'] = Deposit::where('status',1)->sum('amount');
        $payment['total_deposit_charge'] = Deposit::where('status',1)->sum('charge');
        $payment['total_deposit_pending'] = Deposit::where('status',2)->count();

        $paymentWithdraw['total_withdraw_amount'] = Withdrawal::where('status',1)->sum('amount');
        $paymentWithdraw['total_withdraw_charge'] = Withdrawal::where('status',1)->sum('charge');
        $paymentWithdraw['total_withdraw_pending'] = Withdrawal::where('status',2)->count();
        return view('admin.dashboard', compact('pageTitle', 'widget', 'report', 'withdrawals', 'chart','payment','paymentWithdraw','depositsMonth','withdrawalMonth','months','deposits'));
    }


    public function profile()
    {
        $pageTitle = 'Profile';
        $admin = Auth::guard('admin')->user();
        return view('admin.profile', compact('pageTitle', 'admin'));
    }

    public function profileUpdate(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'image' => ['nullable','image',new FileTypeValidate(['jpg','jpeg','png'])]
        ]);
        $user = Auth::guard('admin')->user();

        if ($request->hasFile('image')) {
            try {
                $old = $user->image ?: null;
                $user->image = uploadImage($request->image, imagePath()['profile']['admin']['path'], imagePath()['profile']['admin']['size'], $old);
            } catch (\Exception $exp) {
                $notify[] = ['error', 'Image could not be uploaded.'];
                return back()->withNotify($notify);
            }
        }

        $user->name = $request->name;
        $user->email = $request->email;
        $user->save();
        $notify[] = ['success', 'Your profile has been updated.'];
        return redirect()->route('admin.profile')->withNotify($notify);
    }


    public function password()
    {
        $pageTitle = 'Password Setting';
        $admin = Auth::guard('admin')->user();
        return view('admin.password', compact('pageTitle', 'admin'));
    }

    public function passwordUpdate(Request $request)
    {
        $this->validate($request, [
            'old_password' => 'required',
            'password' => 'required|min:5|confirmed',
        ]);

        $user = Auth::guard('admin')->user();
        if (!Hash::check($request->old_password, $user->password)) {
            $notify[] = ['error', 'Password do not match !!'];
            return back()->withNotify($notify);
        }
        $user->password = bcrypt($request->password);
        $user->save();
        $notify[] = ['success', 'Password changed successfully.'];
        return redirect()->route('admin.password')->withNotify($notify);
    }

    public function notifications(){
        $notifications = AdminNotification::orderBy('id','desc')->with('user')->paginate(getPaginate());
        $pageTitle = 'Notifications';
        return view('admin.notifications',compact('pageTitle','notifications'));
    }


    public function notificationRead($id){
        $notification = AdminNotification::findOrFail($id);
        $notification->read_status = 1;
        $notification->save();
        return redirect($notification->click_url);
    }

    public function requestReport()
    {
        $pageTitle = 'Your Listed Report & Request';
        $arr['app_name'] = env('APP_NAME');
        $arr['app_url'] = env('APP_URL');
        $arr['purchase_code'] = env('PURCHASE_CODE');
        $url = "https://license.viserlab.com/issue/get?".http_build_query($arr);
        $response = json_decode(curlContent($url));
        if ($response->status == 'error') {
            return redirect()->route('admin.dashboard')->withErrors($response->message);
        }
        $reports = $response->message[0];
        return view('admin.reports',compact('reports','pageTitle'));
    }

    public function reportSubmit(Request $request)
    {
        $request->validate([
            'type'=>'required|in:bug,feature',
            'message'=>'required',
        ]);
        $url = 'https://license.viserlab.com/issue/add';

        $arr['app_name'] = env('APP_NAME');
        $arr['app_url'] = env('APP_URL');
        $arr['purchase_code'] = env('PURCHASE_CODE');
        $arr['req_type'] = $request->type;
        $arr['message'] = $request->message;
        $response = json_decode(curlPostContent($url,$arr));
        if ($response->status == 'error') {
            return back()->withErrors($response->message);
        }
        $notify[] = ['success',$response->message];
        return back()->withNotify($notify);
    }

    public function systemInfo(){
        $laravelVersion = app()->version();
        $serverDetails = $_SERVER;
        $currentPHP = phpversion();
        $timeZone = config('app.timezone');
        $pageTitle = 'System Information';
        return view('admin.info',compact('pageTitle', 'currentPHP', 'laravelVersion', 'serverDetails','timeZone'));
    }

    public function readAll(){
        AdminNotification::where('read_status',0)->update([
            'read_status'=>1
        ]);
        $notify[] = ['success','Notifications read successfully'];
        return back()->withNotify($notify);
    }


    /*
     * adminDashboardView
     *
     * Basic view of admin dashboard
     *
     *
     *
     *
     */
    public function adminDashboard()
    {
        $data['pageTitle'] = __('Admin|Dashboard');
        $data['menu'] = 'dashboard';
        $data['totalUser'] = User::where(['active_status'=> STATUS_ACTIVE, 'role' => USER_ROLE_USER])->count();
        $data['totalProject'] = Portfolio::where(['status'=> STATUS_ACTIVE])->count();
        $data['teams'] = Team::where(['status'=> STATUS_ACTIVE])->count();
        $data['posts'] = Blog::where(['status'=> STATUS_ACTIVE])->count();
        $data['services'] = Service::where(['status'=> STATUS_ACTIVE])->count();
        $data['plans'] = PricingPlan::where(['status'=> STATUS_ACTIVE])->count();

        $monthlyPosts = Blog::select(DB::raw('Count(id) as totalCount'), DB::raw('MONTH(created_at) as months'))
            ->where('status', STATUS_ACTIVE)
            ->whereYear('created_at', Carbon::now()->year)
            ->groupBy('months')
            ->get();
        $all_month = all_months();
        if (isset($monthlyPosts[0])) {
            foreach ($monthlyPosts as $mPosts) {
                $data['post'][$mPosts->months] = $mPosts->totalCount;
            }
        }
        $allPosts= [];
        foreach ($all_month as $month) {
            $allPosts[] =  isset($data['post'][$month]) ? $data['post'][$month] : 0;
        }
        $data['all_posts'] = $allPosts;

        $data['blogs'] = Blog::where(['status'=> STATUS_ACTIVE])->orderBy('id', 'desc')->limit(4)->get();
        $data['view_posts'] = Blog::join('user_blogs', 'user_blogs.blog_id', '=', 'blogs.id')
            ->where(['blogs.status'=> STATUS_ACTIVE])
            ->select('blogs.*', DB::raw("count(user_blogs.blog_id) as count"))
            ->groupBy('user_blogs.blog_id')
            ->limit(4)->get();
        $data['portfolios'] = Portfolio::where(['status'=> STATUS_ACTIVE])->limit(4)->get();

        return view('admin.dashboard.dashboard', $data);
    }

    /*
   *
   * contact list
   * Show the list of specified resource.
   * @return \Illuminate\Http\Response
   *
   */
    public function contactList(Request $request)
    {
        $data['pageTitle'] = __('Contact List');
        $data['menu'] = 'contact';
        if ($request->ajax()) {
            $items = Contact::select('*');
            return datatables($items)
                ->editColumn('created_at', function ($item) {
                    return $item->created_at ? with(new Carbon($item->created_at))->format('d M Y') : '';
                })
                ->filterColumn('created_at', function ($query, $keyword) {
                    $query->whereRaw("DATE_FORMAT(created_at,'%d %M %Y') like ?", ["%$keyword%"]);
                })
                ->addColumn('subject', function ($item) {
                    return str_limit($item->subject,15);
                })
                ->addColumn('actions', function ($item) {
                    $html = '<ul class="d-flex activity-menu">';
                    $html .= view_html('contactDetails', $item->id);
                    $html .= '</ul>';
                    return $html;
                })
                ->rawColumns(['actions'])
                ->make(true);
        }

        return view('admin.contact.list', $data);
    }
    /*
   *
   * subscriberList list
   * Show the list of specified resource.
   * @return \Illuminate\Http\Response
   *
   */
    public function subscriberList(Request $request)
    {
        $data['pageTitle'] = __('Subscriber List');
        $data['menu'] = 'subscriber';
        if ($request->ajax()) {
            $items = Subscriber::select('*');
            return datatables($items)
                ->editColumn('created_at', function ($item) {
                    return $item->created_at ? with(new Carbon($item->created_at))->format('d M Y') : '';
                })
                ->filterColumn('created_at', function ($query, $keyword) {
                    $query->whereRaw("DATE_FORMAT(created_at,'%d %M %Y') like ?", ["%$keyword%"]);
                })
                ->make(true);
        }

        return view('admin.contact.subscriber_list', $data);
    }

    /**
     * contactDetails
     *
     * Show the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function contactDetails($id)
    {
        $data['pageTitle'] = __('Contact Details');
        $data['menu'] = 'contact';
        $id = app(CommonService::class)->checkValidId($id);
        if (is_array($id)) {
            return redirect()->back()->with(['dismiss' => __('Data not found.')]);
        }
        $data['item'] = Contact::where('id',$id)->first();

        return view('admin.contact.details', $data);
    }

    /*
   *
   * testimonial list
   * Show the list of specified resource.
   * @return \Illuminate\Http\Response
   *
   */
    public function testimonialList(Request $request)
    {
        $data['pageTitle'] = __('Testimonial List');
        $data['menu'] = 'testimonial';
        if ($request->ajax()) {
            $items = Contact::select('*');
            return datatables($items)
                ->editColumn('created_at', function ($item) {
                    return $item->created_at ? with(new Carbon($item->created_at))->format('d M Y') : '';
                })
                ->filterColumn('created_at', function ($query, $keyword) {
                    $query->whereRaw("DATE_FORMAT(created_at,'%d %M %Y') like ?", ["%$keyword%"]);
                })
                ->addColumn('actions', function ($item) {
                    $html = '<ul class="d-flex activity-menu">';
                    $html .= view_html('contactDetails', $item->id);
                    $html .= '</ul>';
                    return $html;
                })
                ->addColumn('user_id', function ($item) {
                    return $item->user->name;
                })
                ->rawColumns(['actions'])
                ->make(true);
        }

        return view('admin.contact.list', $data);
    }

    /**
     * testimonialDetails
     *
     * Show the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function testimonialDetails($id)
    {
        $data['pageTitle'] = __('Contact Details');
        $data['menu'] = 'testimonial';
        $id = app(CommonService::class)->checkValidId($id);
        if (is_array($id)) {
            return redirect()->back()->with(['dismiss' => __('Data not found.')]);
        }
        $data['item'] = Contact::where('id',$id)->first();

        return view('admin.contact.details', $data);
    }


}
