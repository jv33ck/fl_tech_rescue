class Section {
  const Section({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageURL,
    required this.requiredItems,
    required this.steps,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageURL;
  final List<String> requiredItems;
  final List<String> steps;
}
