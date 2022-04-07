import 'package:flutter/material.dart';
import 'package:flutter_web_app/controller/blog_page_controller.dart';
import 'package:flutter_web_app/widgets/ads_widget.dart';
import 'package:flutter_web_app/widgets/blogs_card.dart';
import 'package:flutter_web_app/widgets/context_builder.dart';
import 'package:flutter_web_app/widgets/device_sizing.dart';
import 'package:flutter_web_app/widgets/right_side_widget.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AdsCard(),
          Center(
            child: SizedBox(
                width: context.sizeW * 500,
                child:
                    const ContextBuilder(widget: BlogsCard(), itemCount: 50)),
          ),
          const RightSide()
        ],
      ),
    ));
  }
}
