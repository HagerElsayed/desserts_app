import 'package:desserts_app/utils/helper_methods.dart';
import 'package:flutter/material.dart';
class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getMediaQuerySize(context).height * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35)),
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover),
      ),
    );
  }
}
