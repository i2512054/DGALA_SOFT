<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('apps', function (Blueprint $table) {
            $table->tinyIncrements('id');
            $table->tinyInteger('app_id');
            $table->string('name', length: 150);
            $table->string('icon', length: 120);
            $table->string('link', length: 255);
            $table->char('type', length: 1);
            $table->tinyInteger('ind_level');
            $table->tinyInteger('ind_order');
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('apps');
    }
};
