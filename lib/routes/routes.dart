import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/dialoge/dialogeBox.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/': (context) => const DialogueScreen(),
  };
}