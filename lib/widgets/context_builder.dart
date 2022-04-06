import 'package:flutter/material.dart';

class ContextBuilder extends StatelessWidget {
  final int? itemCount;
  final Widget? widget;
  const ContextBuilder({Key? key, this.widget, this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(child: widget);
      },
    );
  }
}
