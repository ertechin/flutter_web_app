import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/about_page.dart';
import 'package:flutter_web_app/widgets/blogs_card.dart';
import 'package:flutter_web_app/widgets/context_builder.dart';
import 'package:flutter_web_app/widgets/projects_card.dart';

class MHomePage extends StatelessWidget {
  const MHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.login))
            ],
            centerTitle: true,
            title: const Text('welcome'),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.developer_mode), text: 'projects'),
              Tab(icon: Icon(Icons.newspaper), text: 'blogs'),
              Tab(icon: Icon(Icons.person), text: 'about me'),
            ]),
          ),
          body: const TabBarView(
            children: [
              ContextBuilder(widget: ProjectCard(), itemCount: 10),
              ContextBuilder(widget: BlogsCard(), itemCount: 10),
              AboutPage()
            ],
          )),
    );
  }
}
