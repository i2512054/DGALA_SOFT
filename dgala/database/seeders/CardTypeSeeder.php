<?php

namespace Database\Seeders;
use App\Models\CardType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
class CardTypeSeeder extends Seeder
{
    public function run(): void
    {
        $ct01 = new CardType();
        $ct01->name = 'VISA Clásica';
        $ct01->ind_status = 1;
        $ct01->save();
        $ct02 = new CardType();
        $ct02->name = 'VISA Oro';
        $ct02->ind_status = 1;
        $ct02->save();
        $ct03 = new CardType();
        $ct03->name = 'VISA Platinum';
        $ct03->ind_status = 1;
        $ct03->save();
        $ct04 = new CardType();
        $ct04->name = 'VISA Signature';
        $ct04->ind_status = 1;
        $ct04->save();
        $ct05 = new CardType();
        $ct05->name = 'VISA Infinite';
        $ct05->ind_status = 1;
        $ct05->save();
        $ct06 = new CardType();
        $ct06->name = 'MASTERCARD Clásica';
        $ct06->ind_status = 1;
        $ct06->save();
        $ct07 = new CardType();
        $ct07->name = 'MASTERCARD Oro';
        $ct07->ind_status = 1;
        $ct07->save();
        $ct08 = new CardType();
        $ct08->name = 'MASTERCARD Platinum';
        $ct08->ind_status = 1;
        $ct08->save();
        $ct09 = new CardType();
        $ct09->name = 'MASTERCARD Black';
        $ct09->ind_status = 1;
        $ct09->save();
        $ct10 = new CardType();
        $ct10->name = 'American Express';
        $ct10->ind_status = 1;
        $ct10->save();
    }
}
