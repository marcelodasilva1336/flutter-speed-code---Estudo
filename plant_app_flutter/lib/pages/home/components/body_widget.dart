import 'package:flutter/material.dart';
import 'featured_plants_widget.dart';
import 'header_search_widget.dart';
import 'recomends_plants_widget.dart';
import 'title_with_more_btn_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderSearchWidget(),
          TitleWithMoreBtnWidget(
            title: 'Recomended',
            onTap: () {},
          ),
          const RecomendsPlantsWidget(),
          TitleWithMoreBtnWidget(
            title: 'Featured Plants',
            onTap: () {},
          ),
          const FeaturedPlantsWidget()
        ],
      ),
    );
  }
}
