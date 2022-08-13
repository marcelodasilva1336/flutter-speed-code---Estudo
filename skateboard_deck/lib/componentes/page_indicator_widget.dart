import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skateboard_deck/provider/index_notifier.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({Key? key}) : super(key: key);

  _indicator(bool isActive) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.black : Colors.transparent,
        border: Border.all(color: Colors.black, width: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = Provider.of<IndexNotifier>(context).index;
    List<Widget> _buildIndicator() {
      List<Widget> indicators = [];
      for (int i = 0; i < 3; i++) {
        indicators.add(
          i == currentIndex ? _indicator(true) : _indicator(false),
        );
      }
      return indicators;
    }

    return Row(children: _buildIndicator());
  }
}
