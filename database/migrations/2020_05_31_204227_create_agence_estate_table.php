<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAgenceEstateTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agence_estate', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('agence_id');
            $table->foreign('agence_id')
                  ->references('id')
                  ->on('agences')
                  ->onDelete('cascade');
            $table->unsignedBigInteger('estate_id');
            $table->foreign('estate_id')
                  ->references('id')
                  ->on('estates')
                  ->onDelete('cascade');
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
        Schema::dropIfExists('agence_estate');
    }
}
