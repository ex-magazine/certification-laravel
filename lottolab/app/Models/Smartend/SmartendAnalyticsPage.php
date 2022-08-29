<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendAnalyticsPage extends Model
{
    use HasFactory;

    public function visitor()
    {

        return $this->belongsTo('App\Models\Smartend\SmartendAnalyticsVisitor', 'visitor_id')->orderby('id', 'desc');
    }
}
