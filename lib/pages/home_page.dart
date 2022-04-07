import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/blog_page.dart';
import 'package:flutter_web_app/pages/projects_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          body: TabBarView(
            children: [
              const ProjectPage(),
              BlogPage(),
              const Center(child: Text('soon')),
            ],
          )),
    );
  }
}
