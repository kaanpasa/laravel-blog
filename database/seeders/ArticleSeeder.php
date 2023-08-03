<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Str;
use DB;
require_once 'vendor/autoload.php';

class ArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

     
    public function run(): void
    {
        $faker = Faker::create();

        for($i=0; $i<4; $i++){
            $title=$faker->sentence(6);
            DB::table('articles')->insert([
                'categoryId'=>rand(1,7),
                'title'=>$title,
                'image'=>$faker->imageUrl(800, 400, 'Kaan Pasa'),
                'content'=>$faker->paragraph(6),
                'slug'=>Str::slug($title),
                'created_at'=>$faker->dateTime("now"),
                'updated_at'=>now()
            ]);
        }
    }
}
