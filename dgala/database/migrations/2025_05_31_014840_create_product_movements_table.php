<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('product_movements', function (Blueprint $table) {
            $table->id();
            $table->integer('product_id');
            $table->string('type', length: 1);
            $table->string('description', length: 255);
            $table->string('purchase_order', length: 25);
            $table->decimal('cost_price', total: 10, places: 2);
            $table->decimal('tax', total: 10, places: 2);
            $table->smallInteger('quantity');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('product_movements');
    }
};
