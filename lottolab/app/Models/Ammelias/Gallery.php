<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    //use HasFactory;
    protected $fillable = ['name', 'category_id', 'description', 'image', 'status'];

    public function category()
    {
        return $this->belongsTo(GalleryCategory::class,'category_id');
    }

    public function getImageAttribute($photo){
        $p = asset('assets/ammelias/images/avater.jpg');
        if(!empty($photo)) {
            $p =  asset(path_image().$photo);
        }
        return $p;
    }
}


