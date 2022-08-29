<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
    //use HasFactory;
    protected $fillable = ['name','profession', 'messages', 'image', 'status'];

    public function getImageAttribute($photo) {
        $p = asset('assets/ammelias/images/avater.jpg');
        if(!empty($photo)) {
            $p =  asset(path_image().$photo);
        }
        return $p;
    }
}
