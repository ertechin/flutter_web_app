import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.sizeH * 200,
        child: Card(
            child: SizedBox(
          height: context.sizeH * 155,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(context.sizeH * 8),
                child: SizedBox(
                    width: context.sizeW * 150,
                    height: context.sizeH * 150,
                    child: const Placeholder()),
              ),
              Padding(
                padding: EdgeInsets.all(context.sizeH * 4),
                child: SizedBox(
                    width: context.sizeW * 15,
                    height: context.sizeH * 150,
                    child: Container(
                      child: const RotatedBox(
                          quarterTurns: 3,
                          child: Center(
                              child: Text(
                            'Open Project',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ))),
                      color: Colors.green,
                    )),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(context.sizeH * 8),
                      child: ListTile(
                        title: Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, 0, 0, context.sizeH * 8),
                          child: const Text('Title'),
                        ),
                        subtitle: Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, context.sizeH * 8, 0, 0),
                          child: const Text(
                              'DescDescDescDescDescDescDescDescDescDescDescDescDescDescDescDescDescDescDescDesc.'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, 0, context.sizeH * 16, context.sizeH * 16),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text('click to see the project')),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
