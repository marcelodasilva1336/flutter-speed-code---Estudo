import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skateboard_deck/provider/offset_notifier.dart';
import 'dart:math' as math;

class GreatWavePage extends StatelessWidget {
  const GreatWavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Consumer<OffsetNotifier>(
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: math.max(
                      0,
                      1 - (1 - (4 * value.page - 7)),
                    ),
                    child: child,
                  );
                },
                child: Container(
                  width: 340,
                  height: 340,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Consumer<OffsetNotifier>(
                builder: (context, value, child) {
                  return Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.translationValues(
                        0, 100 * (1 - (4 * value.page - 7)), 0)
                      ..rotateZ((-math.pi / 2) * 2 * value.page),
                    child: child,
                  );
                },
                child: Image.asset('assets/images/wave.webp'),
              )
            ],
          ),
        ),
        Consumer<OffsetNotifier>(
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(0, 50 * (1 - (4 * value.page - 7))),
              child: child,
            );
          },
          child: const Text(
            'Greate Wave',
            style: TextStyle(fontSize: 32),
          ),
        ),
        Consumer<OffsetNotifier>(
          builder: (context, value, child) {
            return Opacity(
              opacity: math.max(0, 4 * value.page - 7),
              child: child,
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 28, right: 28, top: 20),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}
