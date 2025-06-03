<?php

namespace Database\Seeders;

use App\Models\Profile;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProfileSeeder extends Seeder
{
    public function run(): void
    {
        $p01 = new Profile();
        $p01->role_id = 1;
        $p01->app_id = 1;
        $p01->save();
        $p02 = new Profile();
        $p02->role_id = 1;
        $p02->app_id = 2;
        $p02->save();
        $p03 = new Profile();
        $p03->role_id = 1;
        $p03->app_id = 3;
        $p03->save();
        $p04 = new Profile();
        $p04->role_id = 1;
        $p04->app_id = 4;
        $p04->save();
        $p05 = new Profile();
        $p05->role_id = 1;
        $p05->app_id = 5;
        $p05->save();
        $p06 = new Profile();
        $p06->role_id = 1;
        $p06->app_id = 6;
        $p06->save();
        $p07 = new Profile();
        $p07->role_id = 1;
        $p07->app_id = 7;
        $p07->save();
        $p08 = new Profile();
        $p08->role_id = 1;
        $p08->app_id = 8;
        $p08->save();
        $p09 = new Profile();
        $p09->role_id = 1;
        $p09->app_id = 9;
        $p09->save();
        $p10 = new Profile();
        $p10->role_id = 1;
        $p10->app_id = 10;
        $p10->save();
    }
}
