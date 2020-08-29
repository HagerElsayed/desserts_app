import 'package:desserts_app/constants/color.dart';
import 'package:desserts_app/constants/dimens.dart';
import 'package:desserts_app/utils/helper_methods.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double padding;
  const AppText({
    Key key,
    @required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.padding
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:getMediaQuerySize(context).height * (padding ?? kPadding10)),
      child: Text(
          text,
          style: TextStyle(
              color: textColor ?? kdefaultAppColor,
              fontWeight: fontWeight ?? FontWeight.w400,
              fontSize:
                  getMediaQuerySize(context).width * (fontSize ?? kFont16)),
        ),
    );
  }
}
