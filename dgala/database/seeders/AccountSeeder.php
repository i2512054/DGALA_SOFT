<?php

namespace Database\Seeders;

use App\Models\Account;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AccountSeeder extends Seeder
{
    public function run(): void
    {
        $a = new Account();
        $a->role_id = 1;
        $a->name = 'admin';
        $a->email = 'admin@dgala.com.pe';
        $a->access = '123456';
        $a->ind_status = 1;
        $a->save();
    }
}