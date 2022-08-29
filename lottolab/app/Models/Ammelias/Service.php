<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    //use HasFactory;
    protected $fillable = ['title', 'description', 'image', 'status'];

    public function getImageAttribute($photo){
        $p = asset('assets/ammelias/images/default-product.jpg');
        if(!empty($photo)) {
            $p =  asset(path_image().$photo);
        }
        return $p;
    }
}
