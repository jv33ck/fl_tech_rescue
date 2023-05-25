import 'package:fl_tech_rescue/models/section.dart';
import 'package:fl_tech_rescue/screens/section_details.dart';
import 'package:fl_tech_rescue/widgets/section_item.dart';
import 'package:flutter/material.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({
    super.key,
    this.title,
    required this.sections,
  });

  final List<Section> sections;
  final String? title;

  void selectSection(BuildContext context, Section section) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => SectionDetailsScreen(
          section: section,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh...nothing here yet!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting another category',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    if (sections.isNotEmpty) {
      content = ListView.builder(
        itemCount: sections.length,
        itemBuilder: (ctx, index) => SectionItem(
          section: sections[index],
          onSelectSection: (section) {
            selectSection(context, section);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
