import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constant.dart';

class MyHeaderWidget extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;
  final VoidCallback onTap;
  const MyHeaderWidget({
    Key? key,
    required this.image,
    required this.textTop,
    required this.textBottom,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: const EdgeInsets.only(left: 40, top: 60, right: 15),
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/virus.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: onTap,
                child: SvgPicture.asset('assets/icons/menu.svg'),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Stack(
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/icons/Drcorona.svg',
                    width: 230,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      '$textTop \n$textBottom',
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.height / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
