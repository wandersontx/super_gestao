<?php

use App\model\Unidade;
use Illuminate\Database\Seeder;

class UnidadeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Unidade::create([
            'unidade'   => 'UN',
            'descricao' => 'Unidade'
        ]);

    }
}
