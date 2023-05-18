import 'package:fl_tech_rescue/data/data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sectionsProvider = Provider((ref) {
  return categorySections;
});
