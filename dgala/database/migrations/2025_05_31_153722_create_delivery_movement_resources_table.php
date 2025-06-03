<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('delivery_movement_resources', function (Blueprint $table) {
            $table->id();
            $table->integer('delivery_movement_id');
            $table->string('link_image', length: 255);
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('delivery_movement_resources');
    }
};
