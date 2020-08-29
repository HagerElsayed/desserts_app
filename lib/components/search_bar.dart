import 'package:desserts_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: SvgPicture.asset("icons/search.svg"),
          ),
          hintText: 'Search dessert ..',
          hintStyle: TextStyle(color: kSearchBarTextColor),
        ),
      ),
    );
  }
}
