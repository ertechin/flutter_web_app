import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class BlogPageController extends GetxController {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  void onReady() {
    Get.defaultDialog(
      title: 'give me your e-mail !',
      content: FormBuilder(
        key: _formKey,
        child: FormBuilderTextField(
          name: 'e-mail',
          decoration: const InputDecoration(
              hintText: 'if i can, believe me i will sell it'),
        ),
      ),
      confirm: TextButton(
          onPressed: () {
            _formKey.currentState!.save();
            Get.back(closeOverlays: true);
          },
          child: const Text('yes, I already gave it to everyone.')),
    );
    super.onReady();
  }
}
