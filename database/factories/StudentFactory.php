<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Student;
use Faker\Generator as Faker;

$factory->define(\App\Models\Student::class, function (Faker $faker) {
    return [
        'name'         =>      $faker->sentence(3),
        'std_number'     =>      $faker->randomNumber(),
        'gender'     =>      $faker->word('M','F'),
        'birthday'       =>      $faker->date(10),
        'major'       =>      $faker->word(),
        'image' =>$faker->image(),
        'address' =>$faker->word()

    ];

});
