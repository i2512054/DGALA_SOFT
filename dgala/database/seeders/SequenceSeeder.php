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
        $s01->correlative = 'F001-00000000';
        $s01->ind_status = 1;
        $s01->save();
        $s02 = new Sequence();
        $s02->type = 'F';
        $s02->correlative = 'B002-00000000';
        $s02->ind_status = 1;
        $s02->save();
        $s03 = new Sequence();
        $s03->type = 'S';
        $s03->correlative = 'TR25-00000000';
        $s03->ind_status = 1;
        $s03->save();
    }
}
