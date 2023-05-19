class Section {
  const Section({
    required this.id,
    required this.categories,
    required this.title,
    required this.imagePath,
    required this.requiredItems,
    required this.steps,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imagePath;
  final List<String> requiredItems;
  final List<String> steps;
}
