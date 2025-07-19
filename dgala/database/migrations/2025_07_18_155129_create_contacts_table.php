<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->string('name', length: 100);
            $table->string('last_name', length: 100);
            $table->string('email', length: 255);
            $table->string('phone_number', length: 25);
            $table->text('message');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('contacts');
    }
};
