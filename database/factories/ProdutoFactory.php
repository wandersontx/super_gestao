<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\model\Produto;
use Faker\Generator as Faker;

$factory->define(Produto::class, function (Faker $faker) {
    return [
        'nome'       => $faker->sentence(1, true),
        'descricao'  => $faker->sentence(),
        'peso'       => random_int(100, 900),
        'unidade_id' => 1,
    ];
});
