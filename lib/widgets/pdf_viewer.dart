import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFViewer extends StatefulWidget {
  const PDFViewer({
    Key? key,
    required this.pdfAssetPath,
  }) : super(key: key);

  final String pdfAssetPath;

  @override
  // ignore: library_private_types_in_public_api
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PDFViewer> {
  String? localPath;
  int _pageNumber = 0;
  PDFViewController? _pdfViewController;

  @override
  void initState() {
    super.initState();
    preparePdfFile().then((path) {
      setState(() {
        localPath = path;
      });
    });
  }

  Future<String> preparePdfFile() async {
    final ByteData byteData = await rootBundle.load(widget.pdfAssetPath);
    final Directory appDocumentsDirectory =
        await getApplicationDocumentsDirectory();
    final File pdfFile = File(
        '${appDocumentsDirectory.path}/${widget.pdfAssetPath.split("/").last}');
    await pdfFile.writeAsBytes(byteData.buffer.asUint8List());
    return pdfFile.path;
  }

  @override
  Widget build(BuildContext context) {
    if (localPath != null) {
      return Scaffold(
        body: Stack(
          children: [
            PDFView(
              filePath: localPath!,
              swipeHorizontal: true,
              onViewCreated: (PDFViewController pdfViewController) {
                _pdfViewController = pdfViewController;
              },
              onPageChanged: (pageNumber, _) {
                setState(() {
                  _pageNumber = pageNumber!;
                });
              },
            ),
          ],
        ),
      );
    } else {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
  }
}
