import 'package:app_diego/app/core/components/app_button.dart';
import 'package:app_diego/app/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/theme/text_app_theme.dart';

class DetailsActionsCard extends StatelessWidget {
  const DetailsActionsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        color: AppTheme.lightColor,
      ),
      margin: const EdgeInsets.all(kDefaultMarginSmall),
      padding: const EdgeInsets.all(kDefaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: kDefaultMarginSmall),
            child: Text(
              '2IN1 BTCef',
              style: TextAppTheme.titleTextStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: AppButton(
                  filled: false,
                  text: 'Assitir Tutorial',
                  onPress: () {},
                  prefixWidget: const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultMarginSmall / 2),
                    child: Icon(
                      CupertinoIcons.play_rectangle,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: kDefaultMargin),
              Flexible(
                  child: AppButton(
                text: 'Ver no Website',
                filled: false,
                onPress: () {},
                prefixWidget: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultMarginSmall / 2),
                  child: Icon(Icons.public),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
