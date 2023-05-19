import 'package:flutter/material.dart';

import 'package:fl_tech_rescue/models/category.dart';
import 'package:fl_tech_rescue/models/section.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'guide',
    title: 'Structural Collapse',
    imagePath: '',
    color: Colors.deepOrange,
  ),
  Category(
    id: 'guide',
    title: 'Rope Rescue',
    imagePath: '',
    color: Colors.deepOrange,
  ),
  Category(
    id: 'guide',
    title: 'VMR',
    imagePath: '',
    color: Colors.deepOrange,
  ),
  Category(
    id: 'guide',
    title: 'Confined Space Rescue',
    imagePath: '',
    color: Colors.deepOrange,
  ),
  Category(
    id: 'guide',
    title: 'Trench Rescue',
    imagePath: '',
    color: Colors.deepOrange,
  ),
  Category(
    id: 'manual',
    title: 'Clutch',
    imagePath: 'assets/images/clutch.jpeg',
    color: Colors.green,
  ),
  Category(
    id: 'manual',
    title: 'MPD',
    imagePath: '',
    color: Colors.green,
  ),
  Category(
    id: 'manual',
    title: 'AZ Vortex',
    imagePath: '',
    color: Colors.green,
  ),
  Category(
    id: 'manual',
    title: 'Aztek',
    imagePath: '',
    color: Colors.green,
  ),
  Category(
    id: 'manual',
    title: 'CSR2 Pulley',
    imagePath: '',
    color: Colors.green,
  ),
  Category(
    id: 'document',
    title: 'FEMA: 214',
    imagePath: '',
    color: Colors.blue,
  ),
];

const categorySections = [
  Section(
    id: 's1',
    categories: [
      'Structural Collapse',
    ],
    title: 'test',
    imagePath: 'assets/images/clutch.jpeg',
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
      'Structural Collapse',
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
  Section(
    id: 's3',
    categories: [
      'Clutch',
    ],
    title: 'Table of Contents',
    imagePath: 'assets/images/clutch.jpeg',
    requiredItems: [],
    steps: [],
  ),
];
