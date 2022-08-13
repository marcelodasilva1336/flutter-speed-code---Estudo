import 'package:flutter/material.dart';

import '../components/my_header_widget.dart';
import '../components/prevent_card_widget.dart';
import '../components/symptom_card_widgar.dart';
import '../utils/constant.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeaderWidget(
              image: 'assets/icons/coronadr.svg',
              textTop: 'Get to know',
              textBottom: 'About Covid-19',
              onTap: () => Navigator.pop(context),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Symptoms',
                    style: kTitleTextstyle,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      SymptomCardWidget(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        isActive: true,
                      ),
                      SymptomCardWidget(
                        image: 'assets/images/caugh.png',
                        title: 'Caugh',
                      ),
                      SymptomCardWidget(
                        image: 'assets/images/fever.png',
                        title: 'Fever',
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Prevention',
                      style: kTitleTextstyle,
                    ),
                  ),
                  const PreventCardWidget(
                    image: 'assets/images/wear_mask.png',
                    title: 'Wear face mask',
                    text:
                        'Since the start of the coronavirus outbreak some places have fullu embraced weating facemasks',
                  ),
                  const PreventCardWidget(
                    image: 'assets/images/wash_hands.png',
                    title: 'Wash your hands',
                    text:
                        'Since the start of the coronavirus outbreak some places have fullu embraced weating facemasks',
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
