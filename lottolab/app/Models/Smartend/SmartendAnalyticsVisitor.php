<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendAnalyticsVisitor extends Model
{
    use HasFactory;

    //Relation to AnalyticsPage
    public function vPages()
    {
        return $this->hasMany('App\Models\Smartend\SmartendAnalyticsPage', "visitor_id");
    }
}
