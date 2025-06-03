<?php
namespace Database\Seeders;

use App\Models\DocumentType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
class DocumentTypeSeeder extends Seeder
{
    public function run(): void
    {
        $dt01 = new DocumentType();
        $dt01->name = 'Documento de Identidad Nacional';
        $dt01->initials = 'D.N.I.';
        $dt01->ind_status = 1;
        $dt01->save();
        $dt02 = new DocumentType();
        $dt02->name = 'Carné de Extranjería';
        $dt02->initials = 'C.E.';
        $dt02->ind_status = 1;
        $dt02->save();
    }
}
