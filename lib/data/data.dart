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
//TODO: add floating button to pdfViewer screen for showing Cut List Generator
//TODO: add thumbnail images to all sections; placeholder image for all sections without content

  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Markings: Structure/Hazards',
    imagePath: 'assets/images/sc0_27.png',
    startOnPage: 27,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Markings: Search Assessment',
    imagePath: 'assets/images/sc0_30.png',
    startOnPage: 30,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Markings: Victim Location',
    imagePath: 'assets/images/sc0_33.png',
    startOnPage: 33,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Material Weight Estimation',
    imagePath: 'assets/images/sc0_36.png',
    startOnPage: 36,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Raker Length & Angles',
    imagePath: 'assets/images/sc0_106.png',
    startOnPage: 106,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'T Spot Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 52,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Double T Spot Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 56,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: '2 Post Verticle Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 62,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Laced Post Shore',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 66,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Sloped Floor: Type 2',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 76,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Sloped Floor: Type 3',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 80,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Std. Door/Window Shoring',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 86,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Pre-fab Door/Window Shoring',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 89,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Trough Base',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 105,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Flying Raker',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 108,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Solid Sole Rakers',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 112,
  ),
  Section(
    id: 'sc0',
    categories: [
      'Structural Collapse',
    ],
    title: 'Split Sole Rakers',
    imagePath: 'assets/images/structural_collapse_category.png',
    startOnPage: 116,
  ),
  Section(
    id: 'clutch0',
    categories: [
      'Clutch',
    ],
    title: 'Clutch',
    imagePath: 'assets/images/clutch.jpeg',
    startOnPage: 3,
  ),
];
