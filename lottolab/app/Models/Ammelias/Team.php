<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    //use HasFactory;
    protected $fillable = ['name', 'category_id', 'designation', 'image', 'bio', 'email', 'facebook', 'google',
    'twitter', 'skype', 'linkedin', 'status'];

    public function category()
    {
        return $this->belongsTo(Category::class,'category_id');
    }

    public function getImageAttribute($photo){
        $p = asset('assets/ammelias/images/avater.jpg');
        if(!empty($photo)) {
            $p =  asset(path_image().$photo);
        }
        return $p;
    }
}
