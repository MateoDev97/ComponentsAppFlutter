import 'package:flutter/material.dart' show Widget, IconData;

class MenuOption {
  final String route;
  final IconData icon;
  final String title;
  final Widget view;

  MenuOption({required this.route, required this.icon, required this.title, required this.view});
}
