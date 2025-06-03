<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('profiles', function (Blueprint $table) {
            $table->tinyInteger('role_id');
            $table->tinyInteger('app_id');
            $table->timestamps();
            $table->primary(['role_id', 'app_id']);
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('profiles');
    }
};
