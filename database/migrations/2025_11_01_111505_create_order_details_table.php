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
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->string('no_order');
            $table->foreign('no_order')
                ->references('no_order')
                ->on('order_sumaries')
                ->onDelete('cascade');
            $table->string('kode_barang');
            $table->string('nama_barang');
            $table->integer('quantity');
            $table->decimal('harga_per_unit', 10, 2);
            $table->decimal('total_harga', 10, 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order_details');
    }
};
