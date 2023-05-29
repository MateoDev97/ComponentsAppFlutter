import 'package:flutter/material.dart';

import 'package:flutter_components/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child:  ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.photo_album, color: AppTheme.primaryColor),
              ),
              title: Text('Title'),
              subtitle: Text(
                  'Laborum ad labore nulla sit cillum ipsum voluptate minim tempor qui ullamco non. Ea fugiat cupidatat sint esse ullamco. Ex aute aliqua mollit tempor commodo nostrud magna aliqua aute aute do.'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
