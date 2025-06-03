<?php
namespace Database\Seeders;

use App\Models\Sequence;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SequenceSeeder extends Seeder
{
    public function run(): void
    {
        $s01 = new Sequence();
        $s01->type = 'B';
        $s01->correlative = '001-000000';
        $s01->ind_status = 1;
        $s01->save();
        $s02 = new Sequence();
        $s02->type = 'F';
        $s02->correlative = '002-000000';
        $s02->ind_status = 1;
        $s02->save();
    }
}
