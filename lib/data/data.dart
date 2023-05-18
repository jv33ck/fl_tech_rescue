import 'package:flutter/material.dart';

import 'package:fl_tech_rescue/models/category.dart';
import 'package:fl_tech_rescue/models/section.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Structural Collapse',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c2',
    title: 'Rope Rescue',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c3',
    title: 'VMR',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c4',
    title: 'Confined Space Rescue',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c5',
    title: 'Trench Rescue',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c6',
    title: 'Clutch',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c7',
    title: 'MPD',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c8',
    title: 'AZ Vortex',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c9',
    title: 'Aztek',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c10',
    title: 'CSR2 Pulley',
    color: Colors.blueGrey,
  ),
];

const categorySections = [
  Section(
    id: 's1',
    categories: [
      'c1',
    ],
    title: 'Spaghetti with Tomato Sauce',
    imagePath: '',
    requiredItems: [
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
  ),
  Section(
    id: 's2',
    categories: [
      'c1',
    ],
    title: 'Toast Hawaii',
    imagePath: '',
    requiredItems: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),
];
