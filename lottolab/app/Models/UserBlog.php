<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserBlog extends Model
{
    protected $fillable = ['ip', 'blog_id', 'status'];
}
