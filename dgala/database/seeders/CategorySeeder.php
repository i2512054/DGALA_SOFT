<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    public function run(): void
    {
        $c01 = new Category();
        $c01->category_id = 0;
        $c01->name = "Categoría DGALA";
        $c01->description = "Categoría DGALA";
        $c01->link_image = "";
        $c01->ind_level = 0;
        $c01->ind_status = 1;
        $c01->save();
    }
}
