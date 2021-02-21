<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use App\model\Fornecedor;
use Faker\Generator as Faker;

$factory->define(Fornecedor::class, function (Faker $faker) {

    return [
        'nome'  => $faker->company,
        'uf'    => $faker->stateAbbr,
        'email' => $faker->unique()->email,
        'site'  => $faker->safeEmailDomain,
    ];
});
