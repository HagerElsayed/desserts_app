import 'package:desserts_app/constants/color.dart';
import 'package:desserts_app/constants/dimens.dart';
import 'package:desserts_app/reusable_widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class InfoContainer extends StatelessWidget {
  final String icon;
  final String infoText;
  const InfoContainer({Key key, this.icon, this.infoText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SvgPicture.asset(icon),
          ),
          AppText(
            text: infoText,
            textColor: kTextColor,
            padding: 0.0,
            fontSize: kFont14,
          )
        ],
      ),
    );
  }
}
