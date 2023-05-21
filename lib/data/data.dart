import 'package:flutter/material.dart';

import 'package:fl_tech_rescue/models/category.dart';
import 'package:fl_tech_rescue/models/section.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'guide',
    title: 'Structural Collapse',
    imagePath: 'assets/images/structural_collapse_category.png',
    color: Colors.red,
  ),
  Category(
    id: 'guide',
    title: 'Rope Rescue',
    imagePath: 'assets/images/rope_rescue_category.png',
    color: Colors.red,
  ),
  Category(
    id: 'guide',
    title: 'VMR',
    imagePath: 'assets/images/vmr_category.png',
    color: Colors.red,
  ),
  Category(
    id: 'guide',
    title: 'Confined Space',
    imagePath: 'assets/images/confined_space_category.png',
    color: Colors.red,
  ),
  Category(
    id: 'guide',
    title: 'Trench Rescue',
    imagePath: 'assets/images/trench_category.png',
    color: Colors.red,
  ),
  Category(
    id: 'manual',
    title: 'Clutch',
    imagePath: 'assets/images/clutch.jpeg',
    color: Colors.orange,
  ),
  Category(
    id: 'manual',
    title: 'MPD',
    imagePath: 'assets/images/mpd.jpeg',
    color: Colors.orange,
  ),
  Category(
    id: 'manual',
    title: 'AZ Vortex',
    imagePath: 'assets/images/vortex.jpeg',
    color: Colors.orange,
  ),
  Category(
    id: 'manual',
    title: 'Aztek',
    imagePath: 'assets/images/aztek.jpeg',
    color: Colors.orange,
  ),
  Category(
    id: 'manual',
    title: 'CSR2 Pulley',
    imagePath: 'assets/images/csr2.jpeg',
    color: Colors.orange,
  ),
  Category(
    id: 'document',
    title: 'ICS 214 Form',
    imagePath: 'assets/images/214form.jpg',
    color: Colors.green,
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
  ),
  Section(
    id: 's3',
    categories: [
      'Clutch',
    ],
    title: 'Table of Contents',
    imagePath: 'assets/images/clutch.jpeg',
  ),
  Section(
    id: 's4',
    categories: [
      'ICS 214 Form',
    ],
    title: 'ICS 214 Form',
    imagePath: 'assets/images/214form.jpg',
  ),
];
