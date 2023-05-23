class Section {
  Section({
    required this.id,
    required this.categories,
    required this.title,
    required this.imagePath,
    String? pdfPath,
  }) : this.pdfPath = pdfPath ?? 'assets/pdfs/$id.pdf';

  final String id;
  final List<String> categories;
  final String title;
  final String imagePath;
  final String pdfPath;
}
