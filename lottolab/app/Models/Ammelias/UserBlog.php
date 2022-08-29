<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserBlog extends Model
{
    //use HasFactory;
    protected $fillable = ['ip', 'blog_id', 'status'];
}
