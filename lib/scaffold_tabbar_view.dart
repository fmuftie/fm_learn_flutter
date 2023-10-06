// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ScaffoldTabbarView extends StatefulWidget {
  const ScaffoldTabbarView({Key? key}) : super(key: key);

  @override
  State<ScaffoldTabbarView> createState() => _ScaffoldTabbarViewState();
}

class _ScaffoldTabbarViewState extends State<ScaffoldTabbarView> {
  @override
  Widget build(BuildContext context) {
    //scaffold_tabbar_horizontal
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Ongoing",
              ),
              Tab(
                text: "Done",
              ),
            ],
          ),
          title: const Text('Scaffold Tabbar Horizontal View'),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.green[100],
            ),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
  }
}
