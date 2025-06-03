<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddStatusToTbFilmTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
public function up()
    {
        Schema::table('tb_film', function (Blueprint $table) {
            $table->enum('status', ['on', 'off'])->default('on')->after('negara');
        });
    }

    public function down()
    {
        Schema::table('tb_film', function (Blueprint $table) {
            $table->dropColumn('status');
        });
    }
}
