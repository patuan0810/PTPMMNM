<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTblCategoryProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_category_product', function (Blueprint $table) {
            $table->increments('category_id');
            $table->string('meta_keywords');
            $table->string('category_name');
            $table->string('slug_category_product');
            $table->string('category_desc');
            $table->string('category_status');
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
        Schema::dropIfExists('tbl_category_product');
    }
}
