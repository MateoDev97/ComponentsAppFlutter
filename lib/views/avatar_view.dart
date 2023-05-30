import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class AvatarView extends StatelessWidget {
  const AvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                  backgroundColor: AppTheme.primaryColor[800],
                  child: const Text(
                    'SL',
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 140,
          backgroundColor: AppTheme.primaryColor,
          backgroundImage: NetworkImage(
              'https://static1.cbrimages.com/wordpress/wp-content/uploads/2018/11/stan-lee-header.jpg'),
        ),
      ),
    );
  }
}
