<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserVerificationCode extends Model
{
    //use HasFactory;
    protected $fillable = [
        'user_id','type','code','expired_at','status'
    ];
}
