<?php

namespace App\Models\Ammelias;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PricingPlan extends Model
{
    //use HasFactory;
    protected $fillable = ['title', 'description', 'price', 'duration', 'status'];
}
