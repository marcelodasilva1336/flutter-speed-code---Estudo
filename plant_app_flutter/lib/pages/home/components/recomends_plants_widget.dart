import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../details/details_page.dart';

class RecomendsPlantsWidget extends StatelessWidget {
  const RecomendsPlantsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCardWidget(
            image: 'assets/images/image_1.png',
            title: 'Samanthan',
            country: 'Russia',
            price: 440,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
          ),
          RecomendPlantCardWidget(
            image: 'assets/images/image_2.png',
            title: 'Samanthan',
            country: 'Russia',
            price: 440,
            onTap: () {},
          ),
          RecomendPlantCardWidget(
            image: 'assets/images/image_3.png',
            title: 'Samanthan',
            country: 'Russia',
            price: 440,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCardWidget extends StatelessWidget {
  final String image, title, country;
  final int price;
  final VoidCallback onTap;
  const RecomendPlantCardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 2,
        left: kDefaultPadding / 2,
        right: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
