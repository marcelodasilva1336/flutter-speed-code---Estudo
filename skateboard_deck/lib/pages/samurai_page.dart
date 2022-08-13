import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skateboard_deck/provider/offset_notifier.dart';
import 'dart:math' as math;

class SamuraiPage extends StatelessWidget {
  const SamuraiPage({Key? key}) : super(key: key);

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
                    scale: math.max(0, 1 - value.page),
                    child: Opacity(
                      opacity: math.max(
                        0,
                        math.max(0, 1 - value.page),
                      ),
                      child: child,
                    ),
                  );
                },
                child: Container(
                  height: 340,
                  width: 340,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Consumer<OffsetNotifier>(
                builder: (context, notifier, child) {
                  return Transform.rotate(
                    angle: math.max(0, (math.pi / 3) * 4 * notifier.page),
                    child: child,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Image.asset(
                    'assets/images/samurai.png',
                    width: 340,
                    height: 340,
                  ),
                ),
              ),
            ],
          ),
        ),
        Consumer<OffsetNotifier>(
          builder: (context, notifier, child) {
            return Opacity(
              opacity: math.max(0, 1 - 4 * notifier.page),
              child: child,
            );
          },
          child: Column(
            children: const [
              Text(
                'Samurai',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Padding(
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
            ],
          ),
        )
      ],
    );
  }
}
