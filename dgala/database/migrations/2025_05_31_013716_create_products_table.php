<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->integerIncrements('id');
            $table->tinyInteger('category_id');
            $table->string('name', length: 150);
            $table->string('description', length: 255);
            $table->string('color', length: 150);
            $table->string('dimension', length: 150);
            $table->decimal('weight', total: 10, places: 2);
            $table->decimal('cost_price', total: 10, places: 2);
            $table->decimal('sales_price', total: 10, places: 2);
            $table->smallInteger('quantity');
            $table->smallInteger('min_stock');
            $table->smallInteger('max_stock');
            $table->string('link_image', length: 255);
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
