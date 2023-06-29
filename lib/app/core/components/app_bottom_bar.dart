import 'package:app_diego/app/core/constants.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultMargin,
        vertical: kDefaultMarginSmall,
      ),
      width: MediaQuery.of(context).size.width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.add_box),
          Icon(Icons.add_box),
          Icon(Icons.add_box),
          Icon(Icons.add_box),
          Icon(Icons.add_box),
        ],
      ),
    );
  }
}
