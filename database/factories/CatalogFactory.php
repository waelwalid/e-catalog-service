<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Catalog>
 */
class CatalogFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $types = ['DIGITAL', 'PHYSICAL'];

        return [
            'title' => $this->faker->sentence(),
            'image' => $this->faker->imageUrl(640,480),
            'body' => $this->faker->text(),
            'type' => $types[rand(0,1)],
            'stock' => rand(10,3000),
            'price' => rand(15, 50000)
        ];
    }
}
