import 'package:fl_tech_rescue/models/section.dart';
import 'package:fl_tech_rescue/widgets/pdf_viewer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:fl_tech_rescue/providers/favorites_provider.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SectionDetailsScreen extends ConsumerWidget {
  const SectionDetailsScreen({
    super.key,
    required this.section,
  });

  final Section section;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteSections = ref.watch(favoriteSectionsProvider);

    final isFavorite = favoriteSections.contains(section);

    return Scaffold(
      appBar: AppBar(
        title: Text(section.title),
        actions: [
          IconButton(
            onPressed: () {
              final wasAdded = ref
                  .read(favoriteSectionsProvider.notifier)
                  .toggleSectionFavoriteStatus(section);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(wasAdded
                      ? 'Added to Favorites.'
                      : 'Removed from Favorites.'),
                ),
              );
            },
            icon: Icon(isFavorite ? Icons.star : Icons.star_border),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 75),
        child: PDFViewer(
          pdfAssetPath: section.pdfPath,
          startOnPage: section.startOnPage,
        ),
      ),
      //
    );
  }
}
