import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/ads_widget.dart';
import 'package:flutter_web_app/widgets/context_builder.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';
import 'package:flutter_web_app/widgets/projects_card.dart';
import 'package:flutter_web_app/widgets/right_side_widget.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(0, context.sizeH * 16, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AdsCard(),
          Center(
            child: SizedBox(
                width: context.sizeW * 500,
                child:
                    const ContextBuilder(widget: ProjectCard(), itemCount: 50)),
          ),
          const RightSide()
        ],
      ),
    ));
  }
}
