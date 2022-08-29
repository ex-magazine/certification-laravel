<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendBanner extends Model
{
    use HasFactory;

    public function webmasterBanner()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendWebmasterBanner', 'section_id');
    }
}
