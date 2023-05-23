import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFViewer extends StatefulWidget {
  const PDFViewer({
    Key? key,
    required this.pdfAssetPath,
    this.startOnPage,
  }) : super(key: key);

  final String pdfAssetPath;
  final int? startOnPage;

  @override
  // ignore: library_private_types_in_public_api
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PDFViewer> {
  String? localPath;
  PdfViewerController? _pdfViewController;

  @override
  void initState() {
    super.initState();
    _pdfViewController = PdfViewerController();
    preparePdfFile().then((path) {
      setState(() {
        localPath = path;
        _pdfViewController!.jumpToPage(widget.startOnPage ?? 0);
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
            SfPdfViewer.asset(
              localPath!,
              controller: _pdfViewController,
              canShowPaginationDialog: true,
              pageLayoutMode: PdfPageLayoutMode.single,
              // onPageChanged: (pageNumber, _) {
              //   setState(() {
              //     _pageNumber = pageNumber!;
              // });
              // },
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
