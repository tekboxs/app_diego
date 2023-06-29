import 'package:app_diego/app/pages/details/details_page.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'navgation/page_keys.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: kGlobalKeyNavigator,
      initialRoute: Kpages.details.route,
      routes: routes,
    );
  }
}

Map<String, WidgetBuilder> routes = {
  Kpages.details.route: (context) => const DetailsPage(),
};
