<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendComment extends Model
{
    use HasFactory;

    //Relation to Topics
    public function topics()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendTopic', 'topic_id');
    }

}
