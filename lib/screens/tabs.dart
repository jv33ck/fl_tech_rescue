import 'package:fl_tech_rescue/screens/categories.dart';
import 'package:fl_tech_rescue/screens/sections.dart';
import 'package:fl_tech_rescue/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_tech_rescue/providers/favorites_provider.dart';
import 'package:fl_tech_rescue/widgets/section_search.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  String currentCategoryId = 'guide';
  String currentScreenTitle = 'Field Guides'; // initial value

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) {
    Navigator.of(context).pop(); // Close the drawer
    if (identifier == 'Field Guides') {
      setState(() {
        currentCategoryId = 'guide';
        currentScreenTitle = 'Field Guides';
      });
    } else if (identifier == 'Equipment Manuals') {
      setState(() {
        currentCategoryId = 'manual';
        currentScreenTitle = 'Equipment Manuals';
      });
    } else if (identifier == 'Deployment Documents') {
      setState(() {
        currentCategoryId = 'document';
        currentScreenTitle = 'Deployment Documents';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(
        currentCategoryId: currentCategoryId); // Pass currentCategoryId
    var activePageTitle = currentScreenTitle; // Use currentScreenTitle

    if (_selectedPageIndex == 1) {
      final favoriteSections = ref.watch(favoriteSectionsProvider);
      activePage = SectionsScreen(
        sections: favoriteSections,
      );
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: SectionSearch());
            },
          )
        ],
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
        ],
      ),
    );
  }
}
