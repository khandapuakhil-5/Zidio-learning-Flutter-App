import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../constants.dart';
import 'files.dart';

class PdfView extends StatelessWidget {
  PdfView({required this.index, super.key});

  static const String id = 'pdf_view';
  late final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: kBottomSheet,
      appBar: AppBar(
        elevation: 20.0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[400],
        centerTitle: true,
        title: Text(name[index],
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 18.5,
            wordSpacing: 1.5,
            letterSpacing: 1.25,
          ),
        ),
      ),
      body: SfPdfViewer.asset(pdf[index]),
    );
  }
}
