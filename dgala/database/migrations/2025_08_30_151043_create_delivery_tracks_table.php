<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('delivery_tracks', function (Blueprint $table) {
            $table->string('id', length: 13);
            $table->integer('delivery_id');
            $table->timestamps();
            $table->primary('id');
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('delivery_tracks');
    }
};
