<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

class CategoryFactory extends Factory
{

    protected $model = Category::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    
    public function definition()
    {
        return [
            'namecategory' => $this->faker->randomElement(['undangan', 'izin','pernyataan', 'kantoran']),
            'description' => $this->faker->paragraph(2, true)
        ];
    }
}
