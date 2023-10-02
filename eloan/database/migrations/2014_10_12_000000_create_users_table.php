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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->integer('role_id')->default(0)->comment('0: Master Admin');
            $table->string('name');
            $table->string('first_name');
            $table->string('last_name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('pin')->nullable();
            $table->integer('created_by_id')->nullable();
            $table->integer('updated_by_id')->nullable();
            $table->enum('status', ['ACT', 'INACT','BLOCKED']);
            $table->enum('user_type', ['SUPER_ADMIN', 'EMPLOYEE','CUSTOMER']);
            $table->enum('is_admin', ['0', '1','2']);
            $table->string('qr_code')->nullable();
            $table->string('u_code')->nullable();
            $table->integer('login_attempt')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
