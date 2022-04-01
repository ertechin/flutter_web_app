import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogPageController extends GetxController {
  @override
  void onReady() {
    Get.defaultDialog(
      title: 'give me your e-mail !',
      content: const TextField(),
      confirm: TextButton(
          onPressed: () {},
          child: const Text('yes, I already gave it to everyone.')),
    );
    super.onReady();
  }
}
