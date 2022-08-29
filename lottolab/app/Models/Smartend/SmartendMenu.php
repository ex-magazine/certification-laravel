<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendMenu extends Model
{
    use HasFactory;

    public function subMenus()
    {
        return $this->hasMany('App\Models\Smartend\SmartendMenu', 'father_id')->orderby('row_no', 'asc');
    }

    public function webmasterSection()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendWebmasterSection', 'cat_id');
    }
}
