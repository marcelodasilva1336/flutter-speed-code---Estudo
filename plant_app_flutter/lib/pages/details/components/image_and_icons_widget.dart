import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants.dart';
import 'icon_card_widget.dart';

class ImageAndIconsWidget extends StatelessWidget {
  const ImageAndIconsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                      ),
                    ),
                    const Spacer(),
                    const IconCardWidget(icon: 'assets/icons/sun.svg'),
                    const IconCardWidget(icon: 'assets/icons/icon_2.svg'),
                    const IconCardWidget(icon: 'assets/icons/icon_3.svg'),
                    const IconCardWidget(icon: 'assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29)),
                ],
                image: const DecorationImage(
                    image: AssetImage('assets/images/img.png'),
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
