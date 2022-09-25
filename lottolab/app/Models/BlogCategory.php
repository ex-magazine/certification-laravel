<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BlogCategory extends Model
{
    protected $fillable = ['title', 'status'];

    public static function get_post_count($id){
        $item = Blog::join('categories','categories.id','=','blogs.category_id')
            ->where(['categories.id'=>$id, 'blogs.status'=> 1])
            ->count();
        return $item;
    }
}
