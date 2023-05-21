import 'package:flutter/material.dart';

import 'package:fl_tech_rescue/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.black,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: onSelectCategory,
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Image(
              image: AssetImage(category.imagePath),
              fit: BoxFit.cover,
              height: 150,
              width: 100,
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 100,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.black12.withOpacity(1),
                    category.color.withOpacity(1),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )),
                child: Center(
                  child: Text(
                    category.title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
