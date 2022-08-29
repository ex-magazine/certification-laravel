<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendRelatedTopic extends Model
{
    use HasFactory;

    //Relation to Related Topics one topic
    public function topic()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendTopic', 'topic2_id');
    }
}
