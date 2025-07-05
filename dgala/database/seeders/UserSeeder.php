<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        User::create(
            [
                'role_id' => 1,
                'name' => 'Admin',
                'email' => 'admin@dgala.com.pe',
                'password' => Hash::make('123456'),
                'ind_status' => 1
            ]
        );
    }
}
