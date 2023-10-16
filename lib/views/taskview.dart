

import 'package:flutter/material.dart';

import 'AddTask.dart';
import 'headerview.dart';
import 'tasklistview.dart';
import 'taskinfo.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        bottom: false,
        child: Column(
          children: [

            Expanded(flex: 1,
                child: HeaderView()),
            Expanded(flex: 1,
                child: TaskInfoView()),
            Expanded(flex: 7,
                child:TaskListView()),


          ],
        ),
      ),
      floatingActionButton: AddTask(),  //create widget
    );
  }
}