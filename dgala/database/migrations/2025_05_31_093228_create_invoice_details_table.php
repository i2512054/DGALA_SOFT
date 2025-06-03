<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('invoice_details', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_id', length: 10);
            $table->integer('product_id');
            $table->integer('service_id');
            $table->decimal('price', total: 10, places: 2);
            $table->tinyInteger('quantity');
            $table->decimal('amount', total: 10, places: 2);
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('invoice_details');
    }
};
