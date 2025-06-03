<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('audits', function (Blueprint $table) {
            $table->id();
            $table->string('table_name', length: 120);
            $table->string('action', length: 1);
            $table->string('type', length: 1);
            $table->text('before_json');
            $table->text('after_json');
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('audits');
    }
};
