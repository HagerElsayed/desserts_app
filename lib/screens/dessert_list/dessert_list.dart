import 'package:desserts_app/components/search_bar.dart';
import 'package:desserts_app/constants/color.dart';
import 'package:desserts_app/constants/dimens.dart';
import 'package:desserts_app/models/dessert.dart';
import 'package:desserts_app/reusable_widgets/custom_app_bar.dart';
import 'package:desserts_app/utils/helper_methods.dart';
import 'package:flutter/material.dart';

import 'dessert_card.dart';

class DessertList extends StatefulWidget {
  @override
  _DessertListState createState() => _DessertListState();
}

class _DessertListState extends State<DessertList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: CustomAppBar(
          title: 'Home',
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getMediaQuerySize(context).width * kPadding60,
            vertical: getMediaQuerySize(context).height * kPadding10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SearchBarWidget(),
              SizedBox(
                height: getMediaQuerySize(context).height * kPadding30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: AppRepo.desserts.length,
                  itemBuilder: (context, index) => DessertCard(index: index),
                ),
              ),
            ],
          ),
        ));
  }
}
