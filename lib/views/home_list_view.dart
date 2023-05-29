import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_router.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {

    final listMenuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(title: const Text('List view')),
        body: ListView.separated(
          itemCount: listMenuOptions.length,
          itemBuilder: (context, i) => ListTile(
            leading: Icon(listMenuOptions[i].icon, color: AppTheme.primaryColor),
            title: Text(listMenuOptions[i].title),
            onTap: () {
              Navigator.pushNamed(context, listMenuOptions[i].route);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
