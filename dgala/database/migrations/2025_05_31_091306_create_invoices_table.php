<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->string('id', length: 10);
            $table->integer('customer_id');
            $table->string('type', length: 1);
            $table->date('issued_at');
            $table->date('expired_at');
            $table->decimal('tax', total: 10, places: 2);
            $table->string('ind_action', length: 1);
            $table->boolean('ind_status');
            $table->timestamps();
            $table->primary('id');
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('invoices');
    }
};
