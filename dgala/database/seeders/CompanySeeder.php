<?php

namespace Database\Seeders;

use App\Models\Company;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CompanySeeder extends Seeder
{
    public function run(): void
    {
        $companies = [
            [
                'id' => '20602087876',
                'type' => 'S.A.C.',
                'ciiu' => 74921,
                'name' => 'Joyerías DGala',
                'trade_name' => 'Diseñamos y fabricamos joyas, fusionando arte para tí.',
                'department_code' => '15',
                'province_code' => '01',
                'district_code' => '06',
                'address' => 'MZ. D LT. 12 ASOC. DE PRO LIMA - PUENTE PIEDRA',
                'email' => 'joyasoyeriaDGala@hotmail.com',
                'phone_number' => '916520052',
                'latitude' => -11.8375632,
                'longitude' => -77.2895163,
                'created_at' => '2025-08-27 11:57:03',
                'updated_at' => '2025-08-27 11:57:09',
            ]
        ];
        Company::insert($companies);
    }
}
