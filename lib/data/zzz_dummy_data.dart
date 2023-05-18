import 'package:flutter/material.dart';

import 'package:fl_tech_rescue/models/category.dart';
import 'package:fl_tech_rescue/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'fg1',
    title: 'Rope Rescue',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'fg2',
    title: 'Structural Collapse',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'fg3',
    title: 'VMR',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'fg4',
    title: 'Confined Space Rescue',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'fg5',
    title: 'Trench Rescue',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'fg6',
    title: 'MSOT',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'em1',
    title: 'Clutch',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'em2',
    title: 'MPD',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'em3',
    title: 'AZ Vortex',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'em4',
    title: 'Aztek',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'em5',
    title: 'CSR2 pulleys',
    color: Colors.blueGrey,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
