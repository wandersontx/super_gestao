<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProdutoFiliaisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('produto_filiais', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('filial_id');
            $table->unsignedBigInteger('produto_id');
            $table->float('preco_venda',8,2);
            $table->integer('estoque_minimo');
            $table->integer('estoque_maximo');
            $table->timestamps();

            $table->foreign('filial_id')->references('id')->on('filiais')->onUpdate('cascade');
            $table->foreign('produto_id')->references('id')->on('produtos')->onUpdate('cascade');
        });

        Schema::table('produtos', function(Blueprint $table){
            $table->dropColumn(['preco_venda','estoque_minimo','estoque_maximo']);
        });

        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('produtos', function(Blueprint $table){
            $table->float('preco_venda',8,2);
            $table->integer('estoque_minimo');
            $table->integer('estoque_maximo');
        });         

        Schema::dropIfExists('produto_filiais');
    }
}
