import 'package:app_diego/app/core/constants.dart';
import 'package:app_diego/app/core/theme/text_app_theme.dart';
import 'package:flutter/material.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: kDefaultBottomScrollPadding,
        top: kDefaultMarginSmall,
        left: kDefaultMarginSmall,
        right: kDefaultMarginSmall,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Esse teste rápido é utilizado para a detecção de resíduos de antibióticos das famílias Beta-lactâmicos, incluindo a Cefalexina, e Tetraciclinas, simultaneamente. Utiliza tecnologia de imunocromatografia com ouro coloidal, resultando em uma análise clara, precisa e segura!",
            style: TextAppTheme.labelTextStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultMargin),
            child: Text(
              'Espeficicações Técnicas',
              style: TextAppTheme.labelBoldTextStyle,
            ),
          ),
          Text(
            "Esse teste rápido é utilizado para a detecção de resíduos de antibióticos das famílias Beta-lactâmicos, incluindo a Cefalexina, e Tetraciclinas, simultaneamente. Utiliza tecnologia de imunocromatografia com ouro coloidal, resultando em uma análise clara, precisa e segura!",
            style: TextAppTheme.labelTextStyle,
          ),
        ],
      ),
    );
  }
}
