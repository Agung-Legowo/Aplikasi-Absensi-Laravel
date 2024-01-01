<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Letter;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class LetterFactory extends Factory
{

    protected $model = Letter::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nameletter' => $this->faker->words(3, true),
            'descriptionletter' => $this->faker->paragraphs(2, true),
            'typeletter' => $this->faker->randomElement(['formal','nonformal']),
            'fileletter' => $this->faker->url(),
            'coverletter' => $this->faker->url(),
            'categories_id' => Category::inRandomOrder()->first()->id,
            'user_id' => User::inRandomOrder()->first()->id,
        ];
    }
}
