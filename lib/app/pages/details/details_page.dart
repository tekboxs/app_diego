import 'package:app_diego/app/core/components/app_back_arrow_button.dart';
import 'package:app_diego/app/core/components/app_bottom_bar.dart';
import 'package:app_diego/app/core/components/app_button.dart';
import 'package:app_diego/app/core/constants.dart';
import 'package:app_diego/app/core/theme/app_theme.dart';
import 'package:app_diego/app/pages/details/components/content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            leading: const AppBackArrowButton(),
            elevation: 0,
          ),
          bottomNavigationBar: const AppBottomBar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: const AppButton(
            marginLeft: kDefaultMarginLarge,
            marginRight: kDefaultMarginLarge,
            height: kDefaultMarginLarge,
            text: 'Relizar Análise',
            suffixWidget: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultMarginSmall),
                child: Icon(
                  CupertinoIcons.play_arrow,
                  color: AppTheme.lightColor,
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.all(kDefaultMarginSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: const DetailsHeader(),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                      color: AppTheme.backgroundColor,
                    ),
                    child: const DetailsContent(),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
