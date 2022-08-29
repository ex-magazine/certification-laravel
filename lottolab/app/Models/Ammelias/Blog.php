<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    //use HasFactory;

    protected $fillable = ['category_id', 'user_id', 'title', 'slug', 'description', 'image', 'status'];

    public function category()
    {
        return $this->belongsTo(BlogCategory::class,'category_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    public function getImageAttribute($photo){
        $p = asset('assets/ammelias/images/default-product.jpg');
        if(!empty($photo)) {
            $p =  asset(path_image().$photo);
        }
        return $p;
    }

    public static function get_comment_count($id)
    {
        $item = BlogComment::join('ammelias_blogs','ammelias_blogs.id','=','ammelias_blog_comments.blog_id')
            ->where(['ammelias_blogs.id'=>$id])
            ->count();
        return $item;
    }
}
