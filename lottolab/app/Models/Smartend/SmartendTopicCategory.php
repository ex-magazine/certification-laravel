<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendTopicCategory extends Model
{
    use HasFactory;

    //Relation to Sections
    public function section()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendSection', 'section_id');
    }
}
