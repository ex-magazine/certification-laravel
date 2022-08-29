<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendPermissions extends Model
{
    use HasFactory;

    public function users()
    {
        return $this->hasMany('App\Models\Smartend\SmartendUser', 'permissions_id');
    }
}
