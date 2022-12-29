import 'package:flutter/material.dart';

import '../../constants.dart';

class BuyAndDescriptionsButton extends StatelessWidget {
  const BuyAndDescriptionsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: const <Widget>[
        BuyAndDescriptionBtn(
          title: 'Buy Now',
          backgroundColor: kPrimaryColor,
          textColor: Colors.white,
          borderRadiusGeometry:
              BorderRadius.only(topRight: Radius.circular(20)),
        ),
        BuyAndDescriptionBtn(
          borderRadiusGeometry: BorderRadius.only(topLeft: Radius.circular(20)),
          title: "Description",
          textColor: kTextColor,
        )
      ],
    );
  }
}

class BuyAndDescriptionBtn extends StatelessWidget {
  const BuyAndDescriptionBtn({
    Key? key,
    this.backgroundColor,
    this.textColor,
    required this.borderRadiusGeometry,
    required this.title,
  }) : super(key: key);

  final Color? backgroundColor, textColor;
  final BorderRadiusGeometry borderRadiusGeometry;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2,
      height: 84,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadiusGeometry,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
    );
  }
}
