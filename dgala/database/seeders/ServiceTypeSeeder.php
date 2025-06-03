<?php

namespace Database\Seeders;

use App\Models\ServiceType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ServiceTypeSeeder extends Seeder
{
    public function run(): void
    {
        $st01 = new ServiceType();
        $st01->name = 'Fabricación';
        $st01->ind_status = 1;
        $st01->save();
        $st02 = new ServiceType();
        $st02->name = 'Diseño';
        $st02->ind_status = 1;
        $st02->save();
        $st03 = new ServiceType();
        $st03->name = 'Restauración';
        $st03->ind_status = 1;
        $st03->save();
    }
}
