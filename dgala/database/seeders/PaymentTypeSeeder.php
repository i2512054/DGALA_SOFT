<?php

namespace Database\Seeders;

use App\Models\PaymentType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PaymentTypeSeeder extends Seeder
{
    public function run(): void
    {
        $pt01 = new PaymentType();
        $pt01->name = 'Tarjeta de Débito/Crédito';
        $pt01->ind_status = 1;
        $pt01->save();
        $pt02 = new PaymentType();
        $pt02->name = 'Transferencia Bancaria';
        $pt02->ind_status = 1;
        $pt02->save();
        $pt03 = new PaymentType();
        $pt03->name = 'Plataforma de Pagon en Línea';
        $pt03->ind_status = 1;
        $pt03->save();
        $pt04 = new PaymentType();
        $pt04->name = 'Billetera Electrónica';
        $pt04->ind_status = 1;
        $pt04->save();
        $pt05 = new PaymentType();
        $pt05->name = 'Yape';
        $pt05->ind_status = 1;
        $pt05->save();
        $pt05 = new PaymentType();
        $pt05->name = 'Plin';
        $pt05->ind_status = 1;
        $pt05->save();
    }
}
