<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendTopic extends Model
{
    use HasFactory;


    //Relation to webmasterSections
    public function webmasterSection()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendWebmasterSection', 'webmaster_id');
    }

    //Relation to Sections
    public function section()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendSection', 'section_id');
    }

    //Relation to TopicCategory
    public function categories()
    {
        return $this->hasMany('App\Models\Smartend\SmartendTopicCategory');
    }

    //Relation to Users
    public function user()
    {
        return $this->belongsTo('App\Models\Smartend\SmartendUser', 'created_by');
    }

    //Relation to Photos
    public function photos()
    {
        return $this->hasMany('App\Models\Smartend\SmartendPhoto', 'topic_id')->orderby('row_no', 'asc');
    }

    //Relation to Attach Files
    public function attachFiles()
    {
        return $this->hasMany('App\Models\Smartend\SmartendAttachFile', 'topic_id')->orderby('row_no', 'asc');
    }

    //Relation to Related Topics
    public function relatedTopics()
    {
        return $this->hasMany('App\Models\Smartend\SmartendRelatedTopic', 'topic_id')->orderby('row_no', 'asc');
    }

    //Relation to Maps
    public function maps()
    {
        return $this->hasMany('App\Models\Smartend\SmartendMap', 'topic_id')->orderby('row_no', 'asc');
    }


    //Relation to Comments
    public function comments()
    {
        return $this->hasMany('App\Models\Smartend\SmartendComment', 'topic_id')->orderby('row_no', 'asc');
    }

    //Relation to New Comments
    public function newComments()
    {
        return $this->hasMany('App\Models\Smartend\SmartendComment', 'topic_id')->where('status', '=', 0)->orderby('row_no', 'asc');
    }

    //Relation to approved Comments
    public function approvedComments()
    {
        return $this->hasMany('App\Models\Smartend\SmartendComment', 'topic_id')->where('status', '=', 1)->orderby('row_no', 'asc');
    }

    //Relation to Additional Fields
    public function fields()
    {
        return $this->hasMany('App\Models\Smartend\SmartendTopicField', 'topic_id')->orderby('id', 'asc');
    }
}
