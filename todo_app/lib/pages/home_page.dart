import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List toDoList = [
    ['Learn Fultter', false],
    ['Drink Coffee', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Text(
          'To Do App',
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: toDoList.length, 
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Text(
                  toDoList[index][0],
                ),
              ),
            );
          }),
    );
  }
}

void main() {}
