import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';
import 'header_with_searchbox.dart';
import 'recommend_plants.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        HeaderSearchBox(size: size),
        TitleWithMoreButton(
          title: "Recommended",
          press: () {},
        ),
        // it will cover 40% of our total width
        RecommendPlants(),
      ],
    );
  }
}
