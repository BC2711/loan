<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'role_id' => "0",
            'is_admin' => "0",
            'user_type' => "SUPER_ADMIN",
            'status' => "ACT",
            'name' => "Super Admin",
            'first_name' => "Super",
            'last_name' => "Admin",
            'email' => 'chama@gmail.com',
            'password' => Hash::make('1234'),
        ]);
    }
}
