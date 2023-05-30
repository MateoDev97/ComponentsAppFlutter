import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/views/views.dart';

class AppRoutes {
  static const initialRoute = 'homeListView';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'cardView',
        title: 'Card View',
        view: const CardView(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'alertView',
        title: 'Alert View',
        view: const AlertView(),
        icon: Icons.add_alert_sharp),
    MenuOption(
        route: 'avatarView',
        title: 'Circle Avatar',
        view: const AvatarView(),
        icon: Icons.supervised_user_circle_sharp),
    MenuOption(
        route: 'animatedView',
        title: 'Animated Widget',
        view: const AnimatedView(),
        icon: Icons.play_circle_outline),
    MenuOption(
        route: 'inputsView',
        title: 'Inputs Widgets',
        view: const InputsView(),
        icon: Icons.text_fields_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll(
        {'homeListView': (BuildContext context) => const HomeListView()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.view});
    }
    return appRoutes;
  }
}
