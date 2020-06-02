<?php

use App\Category;
use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create([
            'name' => 'Maison',
            'slug' => 'Maison',
        ]);

        Category::create([
            'name' => 'Appartement',
            'slug' => 'Appartement',
        ]);

        Category::create([
            'name' => 'Villa',
            'slug' => 'Villa',
        ]);

        Category::create([
            'name' => 'Studio',
            'slug' => 'Studio',
        ]);
        
        Category::create([
            'name' => 'Manoir',
            'slug' => 'Manoir',
        ]);
    }
}