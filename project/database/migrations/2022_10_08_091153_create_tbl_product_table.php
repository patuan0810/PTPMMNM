<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTblProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_product', function (Blueprint $table) {
            $table->increments('product_id');
            $table->string('product_name');
            $table->string('product_quantity');
            $table->string('product_details');
            $table->string('category_id');
            $table->string('brand_id');
			$table->string('product_price');
			$table->string('product_image');
			$table->string('product_image_1');
			$table->string('product_image_2');
			$table->string('product_image_3');
			$table->string('product_status');
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
        Schema::dropIfExists('tbl_product');
    }
}
