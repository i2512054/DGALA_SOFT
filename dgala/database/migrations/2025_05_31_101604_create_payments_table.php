<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->integerIncrements('id');
            $table->tinyInteger('payment_type_id');
            $table->tinyInteger('bank_id');
            $table->tinyInteger('card_type_id');
            $table->string('invoice_id', length: 10);
            $table->string('card_number', length: 24);
            $table->string('card_expired', length: 5);
            $table->string('card_cvv', length: 3);
            $table->string('phone_number', length: 25);
            $table->string('operation_number', length: 25);
            $table->string('link_image', length: 255);
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('payments');
    }
};
