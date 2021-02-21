<?php

use App\model\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User();
        $user->name = 'Mariana Lima';
        $user->email = 'Mariana@lima.com';
        $user->password = '123456';
        $user->save();
    }
}
