<?php

use App\Agence;
use Illuminate\Database\Seeder;

class AgencesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Agence::create([
            'name' => 'Stephi Place',
            'slug' => 'Stephi Place',
        ]);

        Agence::create([
            'name' => 'Citya',
            'slug' => 'Citya',
        ]);

        Agence::create([
            'name' => 'Foncia',
            'slug' => 'Foncia',
        ]);

        Agence::create([
            'name' => 'Studea',
            'slug' => 'Studea',
        ]);
        
        Agence::create([
            'name' => 'JeremyLtd',
            'slug' => 'JeremyLtd',
        ]);
    }
}
