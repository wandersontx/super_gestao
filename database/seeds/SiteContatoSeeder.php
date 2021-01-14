<?php

use App\model\SiteContato;
use Illuminate\Database\Seeder;

class SiteContatoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $site = new SiteContato();
        $site->nome = 'Sistema Super Gestão';
        $site->telefone = '(61) 9841-5810';
        $site->email = 'contato@supergestao.com';
        $site->motivo_contato = 2;
        $site->mensagem = 'Seja bem-vindo ao sistema Super Gestão';
        $site->save();
    }
}
