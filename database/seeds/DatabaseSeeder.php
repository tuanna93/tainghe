<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('options')->insert([
            ['name' => 'logo','value' => ''],
            ['name' => 'favicon','value' => ''],
            ['name' => 'phone','value' => ''],
            ['name' => 'hotline','value' => ''],
            ['name' => 'address','value' => ''],
            ['name' => 'link_facebook','value' => ''],
            ['name' => 'link_youtube','value' => ''],
            ['name' => 'link_google','value' => ''],
            ['name' => 'posts_per_page','value' => ''],
            ['name' => 'products_per_page','value' => ''],
            ['name' => 'footer_left','value' => ''],
            ['name' => 'footer_right','value' => ''],
            ['name' => 'title','value' => ''],
            ['name' => 'keywords','value' => ''],
            ['name' => 'description','value' => ''],
            ['name' => 'h1','value' => '']
        ]) ;
    }
}