<?php
use App\Estate;
use Carbon\Factory;
use Illuminate\Database\Seeder;

class EstatesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker= Faker\Factory::create();

        for ($i=0; $i < 100; $i++) { 
            $creation = Estate::create([
                'title' => $faker->sentence(3),
                'slug' => $faker->slug,
                'soustitre' => $faker->sentence(13),
                'description' => $faker->sentence(15),
                'prix' => $faker->numberBetween(1000, 10000) * 100,
                'image' => 'estates\May2020\oPpYuVOjyS8tRBa8a5g0.jpg',
            ]);

            $creation->categories()->attach([
                rand(1, 5)
            ]);

            $creation->agences()->attach([
                rand(1, 5)
            ]);
        }
    }
}
