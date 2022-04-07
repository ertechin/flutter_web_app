import 'package:flutter/material.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';

class BlogsCard extends StatelessWidget {
  const BlogsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizeH * 400,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(context.sizeH * 16),
          child: Column(
            children: [
              SizedBox(height: context.sizeH * 250, child: Placeholder()),
              SizedBox(height: context.sizeH * 16),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, context.sizeH * 16),
                  child: const Text('Title'),
                ),
                subtitle: const Text(
                    'DESCDESCDESCDESCDESCDESCDESCDESCDESCDESCDESCDESCDESCDESCDESCDESC'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
