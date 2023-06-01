import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  double _sliderValue = 200;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider View'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Slider(
            min: 200,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.primaryColor,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          const SizedBox(height: 20),
          SwitchListTile(
            title: const Text('Enable slider'),
            activeColor: AppTheme.primaryColor,
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            },
          ),
          const SizedBox(height: 20),
          Image(
            image: const NetworkImage(
                'https://www.tiendamillonarios.com.co/sites/default/files/2023-01/WhatsApp%20Image%202023-01-26%20at%2012.02.42%20%283%29.jpeg'),
            fit: BoxFit.contain,
            width: _sliderValue,
          )
        ],
      ),
    );
  }
}
