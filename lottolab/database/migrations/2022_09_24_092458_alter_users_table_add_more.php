<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterUsersTableAddMore extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            //
            $table->string('name',191)->nullable()->after('country_code');            
            $table->tinyInteger('active_status')->default(1)->after('country_code');
            $table->string('country',191)->nullable()->after('country_code');
            $table->string('phone',20)->nullable()->after('country_code');
            $table->string('photo',191)->nullable()->after('country_code');
            $table->tinyInteger('role')->default(2)->after('country_code');
            $table->string('email_verified',256)->default(0)->after('country_code');
            $table->string('reset_code',191)->nullable()->after('country_code');
            $table->string('city',191)->nullable()->after('country_code');
            $table->string('state',191)->nullable()->after('country_code');
            $table->string('zip',20)->nullable()->after('country_code');
            $table->string('device_id',191)->nullable()->after('country_code');
            $table->string('language',191)->nullable()->after('country_code');
            $table->tinyInteger('device_type')->default(1)->after('country_code');
            $table->tinyInteger('push_notification_status')->default(1)->after('country_code');
            $table->tinyInteger('email_notification_status')->default(1)->after('country_code'); 
  
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('name');
            $table->dropColumn('country');
            $table->dropColumn('phone');
            $table->dropColumn('photo');
            $table->dropColumn('active_status');
            $table->dropColumn('email_verified');
            $table->dropColumn('reset_code');
            $table->dropColumn('city');
            $table->dropColumn('state');
            $table->dropColumn('zip');
            $table->dropColumn('device_id');
            $table->dropColumn('language');
            $table->dropColumn('device_type');
            $table->dropColumn('push_notification_status');
            $table->dropColumn('email_notification_status');
        });
    }
}
