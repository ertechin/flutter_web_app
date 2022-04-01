import 'package:flutter/material.dart';
import 'package:flutter_web_app/controller/blog_page_controller.dart';
import 'package:get/get.dart';

class BlogPage extends StatelessWidget {
  BlogPage({Key? key}) : super(key: key);
  final bpc = Get.put(BlogPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => Get.defaultDialog(), child: const Text('data')),
      ),
    );
  }
}
