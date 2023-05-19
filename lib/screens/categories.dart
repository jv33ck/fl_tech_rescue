import 'package:fl_tech_rescue/data/data.dart';
import 'package:fl_tech_rescue/models/category.dart';
import 'package:fl_tech_rescue/screens/sections.dart';
import 'package:fl_tech_rescue/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  final String currentCategoryId;

  const CategoriesScreen({Key? key, required this.currentCategoryId})
      : super(key: key);

  void _selectCategory(BuildContext context, Category category) {
    final filteredSections = categorySections
        .where((section) => section.categories.contains(category.title))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => SectionsScreen(
          title: category.title,
          sections: filteredSections,
        ),
      ),
    ); // Navigator.push(context, route)
  }

  @override
  Widget build(BuildContext context) {
    // Filter categories based on currentCategoryId
    final filteredCategories = availableCategories
        .where((category) => category.id == currentCategoryId)
        .toList();

    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 6 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in filteredCategories)
          CategoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          )
      ],
    );
  }
}
