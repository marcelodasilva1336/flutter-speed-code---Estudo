import 'package:flutter/material.dart';
import 'package:skateboard_deck/componentes/page_indicator_widget.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const PageIndicatorWidget(),
        const Text(
          'View Board',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 3,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_right_alt_rounded,
            size: 40,
          ),
        ),
      ],
    );
  }
}
