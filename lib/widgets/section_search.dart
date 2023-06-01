import 'package:fl_tech_rescue/models/section.dart';
import 'package:flutter/material.dart';
import 'package:fl_tech_rescue/data/data.dart';
import 'package:fl_tech_rescue/screens/sections.dart';

class SectionSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for the AppBar, like a clear button
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '', // Clear the search field when pressed
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon on the left of the AppBar, like a back button
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  TextStyle get searchFieldStyle {
    return const TextStyle(
      color: Colors.white, // Set your desired color here
      fontSize: 24,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show some result based on the selection. For now, let's not implement this.
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show when someone searches for something
    final List<Section> suggestionList = query.isEmpty
        ? []
        : categorySections
            .where((p) => p.title.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.separated(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => SectionsScreen(
                title: suggestionList[index].title,
                sections: [suggestionList[index]],
              ),
            ),
          );
        },
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            suggestionList[index].title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 28,
                ),
          ),
          Text(
            suggestionList[index].categories[0],
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 14,
                ),
          ),
        ]),
      ),
      itemCount: suggestionList.length,
      separatorBuilder: (context, index) {
        return Divider(
          color: Theme.of(context).colorScheme.onBackground,
          thickness: 0.3,
        );
      },
    );
  }
}
