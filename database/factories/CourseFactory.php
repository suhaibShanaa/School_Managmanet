<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Course;
use Faker\Generator as Faker;

$factory->define(Course::class, function (Faker $faker) {
    return [
        'name'         =>      $faker->sentence(3),
        'hours'     =>      $faker->randomNumber(),
        'cost'     =>      $faker->randomNumber(),
        'currency'       =>      $faker->word('JOD'),
        'start_date'       =>      $faker->date(),
        'end_date'       =>      $faker->date()
    ];
});
