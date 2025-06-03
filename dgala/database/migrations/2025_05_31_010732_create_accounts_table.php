<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('accounts', function (Blueprint $table) {
            $table->integerIncrements('id');
            $table->tinyInteger('role_id');
            $table->string('name', length: 150);
            $table->string('email', length: 255);
            $table->string('access', length: 50);
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('accounts');
    }
};
