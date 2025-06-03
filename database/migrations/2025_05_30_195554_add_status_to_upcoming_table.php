<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddStatusToUpcomingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
public function up()
    {
        Schema::table('upcoming', function (Blueprint $table) {
            $table->enum('status', ['on', 'off'])->default('on')->after('negara');
        });
    }

    public function down()
    {
        Schema::table('upcoming', function (Blueprint $table) {
            $table->dropColumn('status');
        });
    }
}
