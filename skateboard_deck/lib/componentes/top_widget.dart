import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Hops',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                ),
              ),
              Positioned(
                right: 12,
                bottom: 10,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
