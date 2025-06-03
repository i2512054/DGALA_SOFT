<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('deliveries', function (Blueprint $table) {
            $table->integerIncrements('id');
            $table->string('invoice_id', length: 10);
            $table->tinyInteger('document_type_id');
            $table->tinyInteger('delivery_type_id');
            $table->tinyInteger('ubigeo_id');
            $table->string('receive', length: 150);
            $table->string('document_number', length: 25);
            $table->string('address', length: 255);
            $table->string('address_num1', length: 10);
            $table->string('address_num2', length: 10);
            $table->double('latitude');
            $table->double('longitude');
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('deliveries');
    }
};
