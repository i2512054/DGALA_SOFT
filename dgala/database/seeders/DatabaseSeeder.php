<?php

namespace Database\Seeders;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $this->call([
            DeliveryTypeSeeder::class,
            DocumentTypeSeeder::class,
            PaymentTypeSeeder::class,
            ServiceTypeSeeder::class,
            CardTypeSeeder::class,
            SequenceSeeder::class,
            AppSeeder::class,
            RoleSeeder::class,
            ProfileSeeder::class,
            AccountSeeder::class
        ]);
    }
}
