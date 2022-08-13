import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:skateboard_deck/componentes/bottom_widget.dart';
import 'package:skateboard_deck/componentes/top_widget.dart';
import 'package:skateboard_deck/pages/great_wave_page.dart';
import 'package:skateboard_deck/pages/reject_page.dart';
import 'package:skateboard_deck/pages/samurai_page.dart';
import 'package:skateboard_deck/provider/index_notifier.dart';
import 'package:skateboard_deck/provider/offset_notifier.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _pageController;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OffsetNotifier(_pageController),
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        body: Column(
          children: [
            const TopWidget(),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int index) {
                  Provider.of<IndexNotifier>(context, listen: false).index =
                      index;
                },
                children: const [
                  SamuraiPage(),
                  RejectPage(),
                  GreatWavePage(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: BottomWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
