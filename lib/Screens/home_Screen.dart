import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List toDOList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Todo List'),
        actions: const [
          SettingsButton(),
        ],
      ),
      body: Center(
        child: Column(
          children: const [
            Text('LIST GOES HERE'),
          ],
        ),
      ),
      floatingActionButton: const CustomAddButton(),
    );
  }
}
