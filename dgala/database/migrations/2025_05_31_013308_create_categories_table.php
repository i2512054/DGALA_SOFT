<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->tinyIncrements('id');
            $table->tinyInteger('category_id');
            $table->string('name', length: 150);
            $table->string('description', length: 255);
            $table->string('link_image', length: 255);
            $table->tinyInteger('ind_level');
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('categories');
    }
};
