import 'package:app_diego/app/core/constants.dart';
import 'package:flutter/material.dart';

import 'action_card.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            margin: const EdgeInsets.only(bottom: kDefaultMarginLarge),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kDefaultBorderRadiusLarge),
              child: Image.network(
                'https://lirp.cdn-website.com/34703388/dms3rep/multi/opt/WhatsApp+Image+2020-12-15+at+10.42.47-1920w.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width - kDefaultMargin,
                height: MediaQuery.of(context).size.height / 6,
                child: const DetailsActionsCard())),
      ],
    );
  }
}
