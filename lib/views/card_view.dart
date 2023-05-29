import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardView extends StatelessWidget {
   
  const CardView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard(),
          SizedBox(height: 20),
          CustomCardImage(imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
          SizedBox(height: 20),
          CustomCardImage(imageUrl: 'https://wallpaperaccess.com/full/90977.jpg'),
          SizedBox(height: 20),
          CustomCardImage(title: 'Dark landscape', imageUrl: 'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}

