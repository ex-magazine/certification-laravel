<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SmartendCreateAnalyticsPagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('smartend_analytics_pages', function (Blueprint $table) {
            $table->id();
            $table->integer('visitor_id');
            $table->string('ip')->nullable();
            $table->string('title')->nullable();
            $table->string('name')->nullable();
            $table->string('query')->nullable();
            $table->string('load_time')->nullable();
            $table->date('date');
            $table->time('time');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('smartend_analytics_pages');
    }
}
