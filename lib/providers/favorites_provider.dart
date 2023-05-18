import 'package:fl_tech_rescue/models/section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteSectionsNotifier extends StateNotifier<List<Section>> {
  FavoriteSectionsNotifier() : super([]);

  bool toggleSectionFavoriteStatus(Section section) {
    final sectionIsFavorite = state.contains(section);

    if (sectionIsFavorite) {
      state = state.where((s) => s.id != section.id).toList();
      return false;
    } else {
      state = [...state, section];
      return true;
    }
  }
}

final favoriteSectionsProvider =
    StateNotifierProvider<FavoriteSectionsNotifier, List<Section>>((ref) {
  return FavoriteSectionsNotifier();
});
