<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

Schema::dropIfExists('serv_items');

class CreateServItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('serv_items', function (Blueprint $table) {
            $table->increments('id');
            $table->text('imagen')->nullable();
            $table->text('titulo')->nullable();
            $table->text('texto')->nullable();
            $table->text('ruta')->nullable();            
            $table->text('orden')->nullable();    
/*
            $table->integer('id_categorias_luminarias')->unsigned();
            $table->foreign('id_categorias_luminarias')->references('id')->on('categorias_luminarias')->onDelete('cascade');
*/
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('serv_items');
    }
}
