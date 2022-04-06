import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/context_builder.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';
import 'package:flutter_web_app/widgets/projects_card.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
          width: context.sizeW * 500,
          child: const ContextBuilder(widget: ProjectCard(), itemCount: 50)),
    ));
  }
}
