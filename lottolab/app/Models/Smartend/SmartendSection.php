<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendSection extends Model
{
    use HasFactory;

    //Relation to webmasterSections
    public function webmasterSection()
    {

        return $this->belongsTo('App\Models\Smartend\SmartendWebmasterSection', 'webmaster_id');
    }

    //Relation of father section
    public function fatherSection()
    {

        return $this->belongsTo('App\Models\Smartend\SmartendSection', 'father_id');
    }

    //Relation of father sections
    public function fatherSections()
    {

        return $this->hasMany('App\Models\Smartend\SmartendSection', 'father_id')->orderby('row_no', 'asc');
    }

    //Relation to Topics
    public function topics()
    {

        return $this->hasMany('App\Models\Smartend\SmartendTopic')->orderby('row_no', 'asc');
    }

    //Relation of TopicCategory
    public function selectedCategories()
    {

        return $this->hasMany('App\Models\Smartend\SmartendTopicCategory', 'section_id')->groupby('topic_id');
    }
}
