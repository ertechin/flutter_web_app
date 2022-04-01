import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/blog_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
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
              Center(child: Text('soon')),
              BlogPage(),
              Center(child: Text('soon')),
            ],
          )),
    );
  }
}
