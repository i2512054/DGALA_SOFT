<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->integerIncrements('id');
            $table->tinyInteger('document_type_id');
            $table->string('document_number', length: 25);
            $table->string('first_name', length: 80);
            $table->string('middle_name', length: 80);
            $table->string('last_name', length: 80);
            $table->string('email', length: 255);
            $table->string('phone_number', length: 15);
            $table->string('address', length: 255);
            $table->string('access', length: 50);
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('customers');
    }
};
