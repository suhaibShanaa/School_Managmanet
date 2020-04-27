<?php

use App\User;
use Illuminate\Database\Seeder;
class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $user = User::create([
            'name'  => 'admin',
            'email' =>'suhaib.shanaa@gmail.com',
            'password' => bcrypt(123456)
        ]);

        $user->assignRole('admin');

        $user = User::create([
            'name'  => 'super-admin',
            'email' =>'suhaibsh612@gmail.com',
            'password' => bcrypt(123456)
        ]);

        $user->assignRole('super-admin');
    }
}
