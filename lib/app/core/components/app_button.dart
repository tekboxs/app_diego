import 'package:app_diego/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../theme/text_app_theme.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final bool filled;
  final Widget? child;
  final Function()? onPress;
  final Widget? prefixWidget, suffixWidget;
  final double marginLeft, marginTop, marginRight, marginBottom;
  final double? width, height;

  const AppButton({
    Key? key,
    this.text,
    this.child,
    this.onPress,
    this.prefixWidget,
    this.suffixWidget,
    this.filled = true,
    this.marginLeft = 0.0,
    this.marginTop = 0.0,
    this.marginRight = 0.0,
    this.marginBottom = 0.0,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.fromLTRB(
        marginLeft,
        marginTop,
        marginRight,
        marginBottom,
      ),
      decoration: BoxDecoration(
        color: filled ? AppTheme.primaryColor : null,
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (prefixWidget != null) prefixWidget!,
          child ??
              Text(
                text ?? '',
                style: filled
                    ? TextAppTheme.activatedButtonTextStyle
                    : TextAppTheme.labelTextStyle,
              ),
          if (suffixWidget != null) suffixWidget!,
        ],
      ),
    );
  }
}
