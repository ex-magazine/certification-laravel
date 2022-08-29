<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AmmeliasCreateMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ammelias_menus', function (Blueprint $table) {
            // $table->id();
            // $table->timestamps();
            $table->bigIncrements('id');
            $table->string('title');
            $table->string('slug');
            $table->string('component');
            $table->integer('data_order')->default(0);
            $table->tinyInteger('status')->default(1);
            $table->bigInteger('parent_id')->nullable();
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
        Schema::dropIfExists('ammelias_menus');
    }
}
