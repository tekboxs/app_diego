import 'package:app_diego/app/core/constants.dart';
import 'package:app_diego/app/core/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBackArrowButton extends StatelessWidget {
  const AppBackArrowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultMarginSmall),
      child: InkWell(
        onTap: () {
          //back action
        },
        child: Container(
            margin: const EdgeInsets.only(top: kDefaultMarginSmall),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.lightColor,
            ),
            child: const Center(
              child: Icon(
                CupertinoIcons.arrow_left,
                color: AppTheme.darkColor,
                size: 20,
              ),
            )),
      ),
    );
  }
}
