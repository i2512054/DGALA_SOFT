<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('delivery_types', function (Blueprint $table) {
            $table->tinyIncrements('id');
            $table->string('name', length: 100);
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('delivery_types');
    }
};
