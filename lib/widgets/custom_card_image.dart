import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key, this.title, required this.imageUrl});

  final String? title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
        ),
        if (title != null)
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 10, top: 15, bottom: 15),
              child: Text(title ?? 'No title'))
      ]),
    );
  }
}
