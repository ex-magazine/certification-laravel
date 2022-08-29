<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendWebmasterSection extends Model
{
    use HasFactory;

    public function sections()
    {
        return $this->hasMany('App\Models\Smartend\SmartendSection', 'webmaster_id')->orderby('row_no', 'asc');
    }

    public function topics()
    {
        return $this->hasMany('App\Models\Smartend\SmartendTopic', 'webmaster_id')->orderby('row_no', 'asc');
    }

    public function menus()
    {
        return $this->hasMany('App\Models\Smartend\SmartendMenu', 'cat_id')->orderby('row_no', 'asc');
    }

    public function customFields()
    {
        return $this->hasMany('App\Models\Smartend\SmartendWebmasterSectionField', 'webmaster_id')->where('status', '!=', 0)->orderby('row_no', 'asc');
    }

    public function allCustomFields()
    {
        return $this->hasMany('App\Models\Smartend\SmartendWebmasterSectionField', 'webmaster_id')->orderby('row_no', 'asc');
    }
}
