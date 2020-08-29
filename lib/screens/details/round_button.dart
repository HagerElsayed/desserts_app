import 'package:desserts_app/constants/color.dart';
import 'package:desserts_app/constants/dimens.dart';
import 'package:desserts_app/utils/helper_methods.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPressed;
  RoundButton({this.buttonTitle, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getMediaQuerySize(context).width * kPadding10 ),
      child: SizedBox(
        width: double.infinity,
        height: getMediaQuerySize(context).height * 0.07,
        child: FlatButton(
          color: kdefaultAppColor,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25.0),
          ),
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white,
                fontSize:getMediaQuerySize(context).width * kFont16),
          ),
        ),
      ),
    );
  }
}
