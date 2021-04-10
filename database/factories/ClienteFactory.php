<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\model\Cliente;
use Faker\Generator as Faker;

$factory->define(Cliente::class, function (Faker $faker) {
    return [
        'nome' => $faker->firstName().' '.$faker->lastName(),
    ];
});
