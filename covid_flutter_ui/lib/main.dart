import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19 Dashboard',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: "Poppins",
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: kBodyTextColor),
          )),
      home: const HomePage(),
    );
  }
}
