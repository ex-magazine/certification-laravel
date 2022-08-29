<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendWebmail extends Model
{
    use HasFactory;

    public function webmailsGroup()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendWebmailsGroup', 'group_id')->orderby('id', 'asc');
    }

    //Relation to files
    public function files()
    {
        return $this->hasMany('App\Models\Smartend\SmartendWebmailsFile', 'webmail_id')->orderby('id', 'asc');
    }
}
