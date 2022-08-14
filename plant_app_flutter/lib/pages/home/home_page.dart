import 'package:flutter/material.dart';

import 'components/app_bar_widget.dart';
import 'components/bottom_nav_bar_widget.dart';
import 'components/body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 40),
        child: AppBarWidget(),
      ),
      body: BodyWidget(),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
