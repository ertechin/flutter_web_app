import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.sizeH * 500,
        child: const Card(child: ListTile(title: Text('sa'))));
  }
}
