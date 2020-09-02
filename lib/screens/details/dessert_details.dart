import 'package:desserts_app/animation/fade_animation.dart';
import 'package:desserts_app/constants/color.dart';
import 'package:desserts_app/constants/dimens.dart';
import 'package:desserts_app/models/dessert.dart';
import 'package:desserts_app/reusable_widgets/app_text.dart';
import 'package:desserts_app/reusable_widgets/circular_button.dart';
import 'package:desserts_app/screens/details/round_button.dart';
import 'package:desserts_app/utils/helper_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'image_container.dart';
import 'info_container.dart';

class DessertDetails extends StatelessWidget {
  final Dessert dessertObject;
  DessertDetails({@required this.dessertObject});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                FadeAnimation(
                  0.2,
                  ImageContainer(image: dessertObject.image),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('icons/back.svg')),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: InkWell(
                      onTap: () {}, child: SvgPicture.asset('icons/heart.svg')),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getMediaQuerySize(context).width * kPadding60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppText(
                    text: dessertObject.name,
                    textColor: kdefaultAppColor,
                    fontWeight: FontWeight.w600,
                    padding: kPadding30,
                  ),
                  SizedBox(
                    height: getMediaQuerySize(context).height * kPadding20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: dessertObject.price,
                        fontSize: kFont14,
                        textColor: kTextColor,
                        fontWeight: FontWeight.w700,
                      ),
                      Row(
                        children: [
                          CircularButton("-"),
                          AppText(
                            text: "1",
                            textColor: kTextColor,
                            fontSize: kFont14,
                            padding: 0.0,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width:
                                getMediaQuerySize(context).width * kPadding30,
                          ),
                          CircularButton(
                            "+",
                            rightPadding: 0.0,
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            getMediaQuerySize(context).height * kPadding30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoContainer(
                          infoText: dessertObject.calories.toString(),
                          icon: 'icons/kcals.svg',
                        ),
                        InfoContainer(
                          infoText: dessertObject.delivery,
                          icon: 'icons/delivery.svg',
                        ),
                        InfoContainer(
                          infoText: dessertObject.time,
                          icon: 'icons/time.svg',
                        )
                      ],
                    ),
                  ),
                  AppText(
                    text: "Description:",
                    fontSize: kFont16,
                    textColor: kDarkColor,
                    padding: 0.0,
                  ),
                  AppText(
                    text: dessertObject.description,
                    fontSize: kFont14,
                    textColor: kDescriptionColor,
                  ),
                  SizedBox(
                    height: getMediaQuerySize(context).height * 0.09,
                  ),
                  RoundButton(
                    buttonTitle: "Add to cart",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: getMediaQuerySize(context).height * 0.09,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
