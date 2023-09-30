import 'package:flutter/material.dart';
import 'dart:math';

class DetailsPage extends StatelessWidget {
  final String day;
  final List<String> tasks = [
    'Task 1',
    'Task 2',
    'Task 3',
  ];
  DetailsPage({Key? key, required this.day}) : super(key: key); 
 @override

  Widget build(BuildContext context) {
    List<String> randomTasks = [];
    for (int i = 0; i < tasks.length; i++) {
      if (Random().nextBool()) {
        randomTasks.add(tasks[i]);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Details for $day'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tasks for $day: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            SizedBox(
              height: 10,
            ),
            for (String task in randomTasks)
              Text(
                "-$task",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
          ],
        ),
      ),
    );
  }
}