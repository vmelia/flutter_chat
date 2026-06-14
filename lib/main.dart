import 'package:flutter/material.dart';

import 'exports/pages.dart';
import 'exports/theme.dart';

void main() =>
  runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: mainBackgroundColour),
      home: const MainScaffoldWidget(title: 'Chat', body: HomePage()),
    );
  }
}

class MainScaffoldWidget extends StatelessWidget {
  const MainScaffoldWidget({super.key, required this.title, required this.body});
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(title)), elevation: 0),
      body: SafeArea(child: body),
    );
  }
}
