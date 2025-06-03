<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->tinyInteger('service_type_id');
            $table->integer('customer_id');
            $table->string('description', length: 255);
            $table->decimal('price', total: 16, places: 2);
            $table->decimal('tax', total: 18, places: 2);
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('services');
    }
};
