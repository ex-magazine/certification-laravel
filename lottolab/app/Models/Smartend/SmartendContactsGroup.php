<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendContactsGroup extends Model
{
    use HasFactory;

    public function contacts()
    {
        return $this->hasMany('App\Models\Smartend\SmartendContact', 'group_id');
    }
}
