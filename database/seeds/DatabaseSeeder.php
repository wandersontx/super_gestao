<?php

use App\model\Produto;
use App\model\Unidade;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(FornecedorSeeder::class);
        $this->call(MotivoContatoSeeder::class);
        $this->call(SiteContatoSeeder::class);
        $this->call(Unidade::class);
        $this->call(Produto::class);
      
    }
}
q