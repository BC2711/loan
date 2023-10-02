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
        Schema::create('clients', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('first_name');
            $table->string('last_name');
            $table->string('other_name')->nullable();
            $table->string('nrc')->nullable();
            $table->date('dob')->nullable();
            $table->string('age')->nullable();
            $table->enum('gender', ['MALE', 'FEMALE'])->nullable();
            $table->enum('disability', ['YES', 'NO'])->nullable();
            $table->string('province');
            $table->string('district');
            $table->string('constituency');
            $table->integer('phone_number');
            $table->string('email')->unique();
            $table->integer('tpin');
            $table->string('physical_address');
            $table->string('business_name')->nullable();
            $table->string('business_reg_number')->nullable();
            $table->string('type_of_business')->nullable();
            $table->string('id_number')->nullable();
            $table->string('contact_designation')->nullable();
            $table->string('business_phone_number')->nullable();
            $table->string('business_tpin')->nullable();
            $table->string('certificate_of_incorporation')->nullable();
            $table->string('director_id_copies')->nullable();
            $table->string('company_printouts')->nullable();
            $table->string('tax_registration_certificate')->nullable();
            $table->integer('created_by_id')->nullable();
            $table->integer('updated_by_id')->nullable();
            $table->enum('status', ['ACTIVE', 'PENDING','DECLINED']);          
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clients');
    }
};
