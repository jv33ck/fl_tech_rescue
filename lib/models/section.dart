class Section {
  const Section({
    required this.id,
    required this.categories,
    required this.title,
    required this.imagePath,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imagePath;
}
