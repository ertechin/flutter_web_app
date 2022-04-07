import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: context.sizeW * 200,
            height: context.sizeH * 75,
            child: Card(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              ],
            ))),
        SizedBox(
            width: context.sizeW * 200,
            height: context.sizeH * 600,
            child: const Card()),
        SizedBox(
            width: context.sizeW * 200,
            height: context.sizeH * 100,
            child: const Card()),
        SizedBox(
            width: context.sizeW * 200,
            height: context.sizeH * 50,
            child: const Card(
              child: Center(
                  child: Text('Developing By Ersel Ertekin with Flutter')),
            )),
      ],
    );
  }
}
