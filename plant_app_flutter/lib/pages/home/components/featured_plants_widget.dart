import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/utils.dart';

class FeaturedPlantsWidget extends StatelessWidget {
  const FeaturedPlantsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCardWidget(
            image: 'assets/images/bottom_img_1.png',
            onTap: () {},
          ),
          FeaturePlantCardWidget(
            image: 'assets/images/bottom_img_2.png',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCardWidget extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  const FeaturePlantCardWidget({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(
          kDefaultPadding / 2,
          kDefaultPadding / 2,
          kDefaultPadding / 2,
          kDefaultPadding,
        ),
        width: size(context).width * 0.8,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
