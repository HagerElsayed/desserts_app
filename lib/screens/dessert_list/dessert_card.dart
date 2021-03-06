import 'package:desserts_app/animation/fade_animation.dart';
import 'package:desserts_app/constants/color.dart';
import 'package:desserts_app/constants/dimens.dart';
import 'package:desserts_app/models/dessert.dart';
import 'package:desserts_app/reusable_widgets/app_text.dart';
import 'package:desserts_app/screens/details/dessert_details.dart';
import 'package:desserts_app/utils/helper_methods.dart';
import 'package:flutter/material.dart';

class DessertCard extends StatelessWidget {
  final int index;
  const DessertCard({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      AppRepo.desserts[index].id.toDouble(),
      InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DessertDetails(
                  dessertObject: AppRepo.desserts[index],
                ),
              ));
        },
        child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: getMediaQuerySize(context).height * kPadding10,
            ),
//          child: Container(
            child: Stack(
              children: [
                Positioned(
                  left: 40.0,
                  right: 1,
                  child: Container(
                    height: getMediaQuerySize(context).height * 0.14,
                    width: double.infinity,
//                    margin: EdgeInsets.only(left: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all((Radius.circular(20))),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AppText(
                              text: AppRepo.desserts[index].name,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Expanded(
                            child: AppText(
                              text: AppRepo.desserts[index].type,
                              fontWeight: FontWeight.w400,
                              fontSize: kFont14,
                              textColor: kLightPurpulColor,
                            ),
                          ),
                          Expanded(
                            child: AppText(
                              text: AppRepo.desserts[index].price,
                              fontSize: kFont12,
                              textColor: kTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: ClipOval(
                    child: Image.asset(
                      AppRepo.desserts[index].image,
                      height: getMediaQuerySize(context).height * 0.12, //100,
                      width: getMediaQuerySize(context).height * 0.12, //100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
//          ),
            ),
      ),
    );
  }
}
