<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    //use HasFactory;
    protected $fillable = ['title', 'slug', 'component', 'data_order', 'status', 'parent_id'];
}


