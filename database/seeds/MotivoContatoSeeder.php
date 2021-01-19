<?php

use App\model\MotivoContato;
use Illuminate\Database\Seeder;

class MotivoContatoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        MotivoContato::create(['motivo_contato' => 'Dúvida']);
        MotivoContato::create(['motivo_contato' => 'Elógio']);
        MotivoContato::create(['motivo_contato' => 'Reclamação']);
    }
}
