<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendWebmailsFile extends Model
{
    use HasFactory;

    public function webmails()
    {
        return $this->hasMany('App\Models\Smartend\SmartendWebmail', 'group_id');
    }
}
