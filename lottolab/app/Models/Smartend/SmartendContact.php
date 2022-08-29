<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendContact extends Model
{
    use HasFactory;

    public function contactsGroup()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendContactsGroup', 'group_id');
    }
}
