<?php

use App\model\Fornecedor;
use Illuminate\Database\Seeder;

class FornecedorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $fornecedor = new Fornecedor();
        $fornecedor->nome = 'Udemy';
        $fornecedor->site = 'udemy.com';
        $fornecedor->uf = 'rs';
        $fornecedor->email = 'contato@udemy.com';
        $fornecedor->save();

        //Necessário declarar as colunas inseridas a variavel fillable do modelo
        Fornecedor::create([
            'nome'  => 'English Live',
            'site'  => 'english.com',
            'uf'    => 'go',
            'email' => 'contato@english.com',
        ]);

        //3ª forma de inserir registros. Não preeche as colunas
        //created_at e updated_at, por se tratar de inserção convencional
        //sem passar pelo tratamento do laravel. Menos indicada em relação as 
        //anteriores
        DB::table('fornecedores')->insert([
            'nome'  => 'youtube',
            'site'  => 'youtube.com',
            'uf'    => 'df',
            'email' => 'contato@youtube.com',
        ]);
    }
}
