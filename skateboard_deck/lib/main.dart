import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skateboard_deck/pages/on_boarding_page.dart';
import 'package:skateboard_deck/provider/index_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skate Board',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => IndexNotifier(),
        child: const OnBoarding(),
      ),
    );
  }
}
