import 'package:flutter/material.dart';
import 'package:flutter_web_app/controller/blog_page_controller.dart';
import 'package:flutter_web_app/widgets/blogs_card.dart';
import 'package:flutter_web_app/widgets/context_builder.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';
import 'package:get/get.dart';

class BlogPage extends StatelessWidget {
  BlogPage({Key? key}) : super(key: key);
  final bpc = Get.put(BlogPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(0, context.sizeH * 16, 0, 0),
      child: Row(
        children: [
          SizedBox(
              width: context.sizeW * 250,
              child: Column(
                children: [
                  SizedBox(
                      width: context.sizeW * 200,
                      height: context.sizeH * 825,
                      child: Card())
                ],
              )),
          Center(
            child: SizedBox(
                width: context.sizeW * 500,
                child:
                    const ContextBuilder(widget: BlogsCard(), itemCount: 50)),
          ),
          SizedBox(
              width: context.sizeW * 250,
              child: Column(
                children: [
                  SizedBox(
                      width: context.sizeW * 200,
                      height: context.sizeH * 75,
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add)),
                        ],
                      ))),
                  SizedBox(
                      width: context.sizeW * 200,
                      height: context.sizeH * 600,
                      child: Card()),
                  SizedBox(
                      width: context.sizeW * 200,
                      height: context.sizeH * 100,
                      child: Card()),
                  SizedBox(
                      width: context.sizeW * 200,
                      height: context.sizeH * 50,
                      child: const Card(
                        child: Center(
                            child: Text(
                                'Developing By Ersel Ertekin with Flutter')),
                      )),
                ],
              )),
        ],
      ),
    ));
  }
}
