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

final categorySections = [
  Section(
    id: 'sc1',
    categories: [
      'Structural Collapse',
    ],
    title: 'USAR Marking Systems',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc2',
    categories: [
      'Structural Collapse',
    ],
    title: 'Cut Station',
    imagePath: 'assets/images/structural_collapse_category.png',
    pdfPath: 'assets/pdfs/word_test_item.pdf',
  ),
  Section(
    id: 'sc3',
    categories: [
      'Structural Collapse',
    ],
    title: 'Capacities & Weights by material',
    imagePath: 'assets/images/structural_collapse_category.png',
    pdfPath: 'assets/pdfs/word_test_2.pdf',
  ),
  Section(
    id: 'sc4',
    categories: [
      'Structural Collapse',
    ],
    title: 'T Spot Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc5',
    categories: [
      'Structural Collapse',
    ],
    title: 'Double T Spot Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc6',
    categories: [
      'Structural Collapse',
    ],
    title: 'Two Post Verticle Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc7',
    categories: [
      'Structural Collapse',
    ],
    title: 'Laced Post Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc8',
    categories: [
      'Structural Collapse',
    ],
    title: 'Std. Door / Window Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc9',
    categories: [
      'Structural Collapse',
    ],
    title: 'Pre-fab Door / Window Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc10',
    categories: [
      'Structural Collapse',
    ],
    title: 'Solid Sole Rakers - 60° and 45°',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc11',
    categories: [
      'Structural Collapse',
    ],
    title: 'Flying Raker',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc12',
    categories: [
      'Structural Collapse',
    ],
    title: 'Trough Base',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc13',
    categories: [
      'Structural Collapse',
    ],
    title: 'Split Sole Raker',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
  Section(
    id: 'sc14',
    categories: [
      'Structural Collapse',
    ],
    title: 'Sloped Floor Shoring',
    imagePath: 'assets/images/structural_collapse_category.png',
  ),
];
