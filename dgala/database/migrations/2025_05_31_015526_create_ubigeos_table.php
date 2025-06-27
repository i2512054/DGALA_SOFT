<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('ubigeos', function (Blueprint $table) {
            $table->smallIncrements('id');
            $table->string('department_code', length: 2);
            $table->string('province_code', length: 2);
            $table->string('district_code', length: 2);
            $table->string('description', length: 40);
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('ubigeos');
    }
};
