<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('companies', function (Blueprint $table) {
            $table->string('id', length: 11);
            $table->string('type', length: 150);
            $table->integer('ciiu');
            $table->string('name', length: 200);
            $table->string('trade_name', length: 200);
            $table->string('department_code', length: 2);
            $table->string('province_code', length: 2);
            $table->string('district_code', length: 2);
            $table->string('address', length: 255);
            $table->string('email', length: 255);
            $table->string('phone_number', length: 30);
            $table->double('latitude');
            $table->double('longitude');
            $table->timestamps();
            $table->primary('id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('companies');
    }
};
