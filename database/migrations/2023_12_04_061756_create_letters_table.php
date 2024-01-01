<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLettersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('letters', function (Blueprint $table) {
            $table->id();
            $table->string('nameletter');
            $table->text('descriptionletter');
            $table->enum('typeletter',['formal','nonformal'])->default('formal');
            $table->string('fileletter');
            $table->string('coverletter')->nullable();
            $table->unsignedBigInteger('categories_id');
            $table->unsignedBigInteger('user_id');
            $table->timestamps();
        });

        //untuk didalam relasi
        Schema::table('letters', function(Blueprint $table) {
            $table->foreign('categories_id')->references('id')
                    ->on('categories')->onUpdate('cascade')
                    ->onDelete('cascade');
            $table->foreign('user_id')->references('id')
                    ->on('users')->onUpdate('cascade')
                    ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('letters');
    }
}
