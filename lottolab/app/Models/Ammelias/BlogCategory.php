<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlogCategory extends Model
{
   // use HasFactory;
   protected $fillable = ['title', 'status'];

    public static function get_post_count($id){
        $item = Blog::join('ammelias_categories','ammelias_categories.id','=','ammelias_blogs.category_id')
            ->where(['ammelias_categories.id'=>$id, 'ammelias_blogs.status'=> 1])
            ->count();
        return $item;
    }
}
