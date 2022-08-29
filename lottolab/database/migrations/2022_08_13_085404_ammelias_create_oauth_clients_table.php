<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AmmeliasCreateOauthClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ammelias_oauth_clients', function (Blueprint $table) {
            // $table->id();
            // $table->timestamps();
            $table->increments('id');
            $table->integer('user_id')->index()->nullable();
            $table->string('name');
            $table->string('secret', 100);
            $table->text('redirect');
            $table->boolean('personal_access_client');
            $table->boolean('password_client');
            $table->boolean('revoked');
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
        Schema::dropIfExists('ammelias_oauth_clients');
    }
}
