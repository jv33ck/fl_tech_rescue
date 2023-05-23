class Section {
  Section({
    required this.id,
    required this.categories,
    required this.title,
    required this.imagePath,
    int? startOnPage,
    String? pdfPath,
  })  : pdfPath = pdfPath ?? 'assets/pdfs/$id.pdf',
        startOnPage = startOnPage ?? 0;

  final String id;
  final List<String> categories;
  final String title;
  final String imagePath;
  final String pdfPath;
  final int? startOnPage;
}
