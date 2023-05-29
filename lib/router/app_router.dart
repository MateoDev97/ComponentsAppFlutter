import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';


import 'package:flutter_components/views/alert_view.dart';
import 'package:flutter_components/views/card_view.dart';
import 'package:flutter_components/views/home_list_view.dart';


class AppRoutes {
  static const initialRoute = 'homeListView';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'homeListView', title: 'Home View', view: const HomeListView(), icon: Icons.home),
    MenuOption(route: 'cardView', title: 'Card View', view: const CardView(), icon: Icons.credit_card),
    MenuOption(route: 'alertView', title: 'Alert View', view: const AlertView(), icon: Icons.add_alert_sharp)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.view});
    }
    return appRoutes;
  }
}
