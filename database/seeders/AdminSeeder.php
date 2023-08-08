<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('admins')->insert([
            'name'=>'Kaan Pasa',
            'email'=>'kaanpasa@protonmail.com',
            'password'=>bcrypt(102030),
        ]);
    }
}
