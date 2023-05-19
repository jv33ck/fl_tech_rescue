import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.id,
    required this.title,
    required this.imagePath,
    this.color = Colors.blueGrey,
  });

  final String id;
  final String title;
  final String imagePath;
  final Color color;
}
