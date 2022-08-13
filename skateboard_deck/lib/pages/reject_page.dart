import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

import 'package:skateboard_deck/provider/offset_notifier.dart';

class RejectPage extends StatelessWidget {
  const RejectPage({Key? key}) : super(key: key);

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
                  double multiplier;

                  if (value.page <= 1.0) {
                    multiplier = math.max(0, 4 * value.page - 3);
                  } else {
                    multiplier = math.max(0, 1 - (4 * value.page - 4));
                  }
                  return Transform.scale(
                    scale: multiplier,
                    child: child,
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
                builder: (context, value, child) {
                  double multiplier;

                  if (value.page <= 1.0) {
                    multiplier = math.max(0, 4 * value.page - 3);
                  } else {
                    multiplier = math.max(0, 1 - (4 * value.page - 4));
                  }
                  return Transform.translate(
                    offset: Offset(0, -50 * (1 - multiplier)),
                    child: Opacity(
                      opacity: multiplier,
                      child: child,
                    ),
                  );
                },
                child: Image.asset('assets/images/reject.png'),
              ),
            ],
          ),
        ),
        Consumer<OffsetNotifier>(
          builder: (context, value, child) {
            double multiplier;

            if (value.page <= 1.0) {
              multiplier = math.max(0, 4 * value.page - 3);
            } else {
              multiplier = math.max(0, 1 - (4 * value.page - 4));
            }
            return Transform.translate(
              offset: Offset(0, -50 * (1 - multiplier)),
              child: Opacity(
                opacity: multiplier,
                child: child,
              ),
            );
          },
          child: Column(
            children: const [
              Text(
                'Reject',
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
        ),
      ],
    );
  }
}
