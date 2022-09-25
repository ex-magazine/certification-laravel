<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
*/

header('Access-Control-Allow-Origin:  *');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Origin, Authorization,Access-Control-Allow-Origin, X-Requested-With');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

/*
Route::group(['namespace' => 'Api'], function() {
    Route::get('header', 'HomeController@header');
    Route::get('home', 'HomeController@home');
    Route::post('contact-process', 'HomeController@contactProcess');
    Route::post('subscription-process', 'HomeController@subscriptionProcess');
    Route::get('about-us', 'HomeController@aboutUs');
    Route::get('service', 'HomeController@service');
    Route::get('teams', 'HomeController@teams');
    Route::get('portfolio', 'HomeController@portfolio');
    Route::get('portfolio/{id}', 'HomeController@portfolioSingle');
    Route::get('gallery', 'HomeController@gallery');
    Route::get('blogs', 'HomeController@blogs');
    Route::get('blogs/{id}', 'HomeController@singleBlog');
    Route::post('save-blog-comment', 'HomeController@saveBlogComment');
});
*/
Route::namespace('Api')->name('api.')->group(function(){

    //Ammelias
    Route::get('header', 'HomeController@header');
    Route::get('home', 'HomeController@home');
    Route::post('contact-process', 'HomeController@contactProcess');
    Route::post('subscription-process', 'HomeController@subscriptionProcess');
    Route::get('about-us', 'HomeController@aboutUs');
    Route::get('service', 'HomeController@service');
    Route::get('teams', 'HomeController@teams');
    Route::get('portfolio', 'HomeController@portfolio');
    Route::get('portfolio/{id}', 'HomeController@portfolioSingle');
    Route::get('gallery', 'HomeController@gallery');
    Route::get('blogs', 'HomeController@blogs');
    Route::get('blogs/{id}', 'HomeController@singleBlog');
    Route::post('save-blog-comment', 'HomeController@saveBlogComment');



	Route::get('general-setting','BasicController@generalSetting');
	Route::get('unauthenticate','BasicController@unauthenticate')->name('unauthenticate');
	Route::get('languages','BasicController@languages');
	Route::get('language-data/{code}','BasicController@languageData');

	Route::namespace('Auth')->group(function(){
		Route::post('login', 'LoginController@login');
		Route::post('register', 'RegisterController@register');
		
	    Route::post('password/email', 'ForgotPasswordController@sendResetCodeEmail');
	    Route::post('password/verify-code', 'ForgotPasswordController@verifyCode');
	    
	    Route::post('password/reset', 'ResetPasswordController@reset');
	});


	Route::middleware('auth.api:sanctum')->name('user.')->prefix('user')->group(function(){
		Route::get('logout', 'Auth\LoginController@logout');
		Route::get('authorization', 'AuthorizationController@authorization')->name('authorization');
	    Route::get('resend-verify', 'AuthorizationController@sendVerifyCode')->name('send.verify.code');
	    Route::post('verify-email', 'AuthorizationController@emailVerification')->name('verify.email');
	    Route::post('verify-sms', 'AuthorizationController@smsVerification')->name('verify.sms');
	    Route::post('verify-g2fa', 'AuthorizationController@g2faVerification')->name('go2fa.verify');

	    Route::middleware(['checkStatusApi'])->group(function(){
	    	Route::get('dashboard',function(){
	    		return auth()->user();
	    	});

            Route::post('profile-setting', 'UserController@submitProfile');
            Route::post('change-password', 'UserController@submitPassword');

            // Withdraw
            Route::get('withdraw/methods', 'UserController@withdrawMethods');
            Route::post('withdraw/store', 'UserController@withdrawStore');
            Route::post('withdraw/confirm', 'UserController@withdrawConfirm');
            Route::get('withdraw/history', 'UserController@withdrawLog');


            // Deposit
            Route::get('deposit/methods', 'PaymentController@depositMethods');
            Route::post('deposit/insert', 'PaymentController@depositInsert');
            Route::get('deposit/confirm', 'PaymentController@depositConfirm');

            Route::get('deposit/manual', 'PaymentController@manualDepositConfirm');
            Route::post('deposit/manual', 'PaymentController@manualDepositUpdate');

            Route::get('deposit/history', 'UserController@depositHistory');

            Route::get('transactions', 'UserController@transactions');

	    });
	});
});

