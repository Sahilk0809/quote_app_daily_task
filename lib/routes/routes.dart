import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/dialoge/dialogeBox.dart';
import 'package:quote_app_daily_task/invoice/invoiceGenerator.dart';
import '../invoice/details.dart';
import '../invoice/pdf.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/dialoge': (context) => const DialogueScreen(),
    '/': (context) => const InvoiceGenerator(),
    '/detail': (context) => const DetailScreen(),
    '/pdf': (context) => const PdfScreen(),
  };
}