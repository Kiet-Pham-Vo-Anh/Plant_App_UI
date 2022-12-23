import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';

import 'buy_and_descriptions_button.dart';
import 'icon_card.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIcons(size: size),
            TitleAndPrice(title: "Angleica", country: "Russia", price: 400),
            SizedBox(height: kDefaultPadding),
            BuyAndDescriptionsButton()
          ],
        ),
      ),
    );
  }
}
