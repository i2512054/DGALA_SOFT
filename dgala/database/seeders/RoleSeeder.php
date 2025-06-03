<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    public function run(): void
    {
        $r01 = new Role();
        $r01->name = 'Administrador';
        $r01->ind_status = 1;
        $r01->save();
        $r02 = new Role();
        $r02->name = 'Operador';
        $r02->ind_status = 1;
        $r02->save();
    }
}
