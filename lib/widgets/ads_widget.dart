import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';

class AdsCard extends StatelessWidget {
  const AdsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: context.sizeH * 50,
            width: context.sizeW * 250,
            child: const Card(
                child:
                    Center(child: Text('ads you know how you can help me')))),
        SizedBox(
            height: context.sizeH * 775,
            width: context.sizeW * 250,
            child: const Card())
      ],
    );
  }
}
