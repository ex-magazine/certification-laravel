<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    //use HasFactory;
    protected $fillable = ['name', 'email', 'subject', 'description', 'status'];
}
