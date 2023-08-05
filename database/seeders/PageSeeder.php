<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use DB;

class PageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $pages=['Hakkımızda','Kariyer','Vizyonumuz','Misyonumuz'];
        $count=0;
        foreach($pages as $page){
            $count++;
            DB::table('pages')->insert([
                'title'=>$page,
                'slug'=>Str::slug($page,"-"),
                'content'=>'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!',
                'image'=>'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000',
                'order'=>$count,
                'created_at'=>now(),
                'updated_at'=>now()
            ]);
        }
    }
}

