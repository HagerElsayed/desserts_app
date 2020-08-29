import 'package:desserts_app/constants/color.dart';
import 'package:desserts_app/constants/dimens.dart';
import 'package:desserts_app/reusable_widgets/app_text.dart';
import 'package:desserts_app/utils/helper_methods.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String text;
  final rightPadding;
  CircularButton(this.text,{this.rightPadding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: rightPadding ??  getMediaQuerySize(context).width * kPadding30),
      child: ClipOval(
        child: InkWell(
          child: Container(
              height: 30,
              width:30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: kButtonBorderColor, width: 1),
                  borderRadius: BorderRadius.circular(100)),
              child: AppText(
                text: text,
                textColor: kTextColor,
                fontWeight: FontWeight.w600,
                padding: 0.0,
              )),
          onTap: () {},
        ),
      ),
    );
  }
}
