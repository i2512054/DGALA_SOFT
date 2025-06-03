<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('delivery_movements', function (Blueprint $table) {
            $table->integerIncrements('id');
            $table->integer('delivery_id');
            $table->text('remarks');
            $table->string('type', length: 2);
            $table->boolean('ind_status');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('delivery_movements');
    }
};
