<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendWebmasterBanner extends Model
{
    use HasFactory;

    public function banners()
    {
        return $this->hasMany('App\Models\Smartend\SmartendBanner', 'section_id');
    }
}
