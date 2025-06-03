<?php

namespace Database\Seeders;

use App\Models\DeliveryType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DeliveryTypeSeeder extends Seeder
{
    public function run(): void
    {
        $dt01 = new DeliveryType();
        $dt01->name = 'Retire su pedido';
        $dt01->ind_status = 1;
        $dt01->save();
        $dt02 = new DeliveryType();
        $dt02->name = 'Envío por Express';
        $dt02->ind_status = 1;
        $dt02->save();
        $dt03 = new DeliveryType();
        $dt03->name = 'Envío con fecha de programación';
        $dt03->ind_status = 1;
        $dt03->save();
        $dt04 = new DeliveryType();
        $dt04->name = 'Envío por rango de fechas';
        $dt04->ind_status = 1;
        $dt04->save();
    }
}
