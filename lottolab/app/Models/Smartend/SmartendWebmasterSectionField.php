<?php

namespace App\Models\Smartend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SmartendWebmasterSectionField extends Model
{
    use HasFactory;

    public function fields()
    {
        return $this->hasMany('App\Models\Smartend\SmartendTopicField', 'field_id')->orderby('id', 'asc');
    }
}
