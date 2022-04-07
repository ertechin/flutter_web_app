import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/ads_widget.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AdsCard(),
          SizedBox(
              width: context.sizeW * 725,
              height: context.sizeH * 825,
              child: const Card()),
        ],
      ),
    );
  }
}
