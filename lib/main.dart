// main.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/controllers/todos_controller.dart';
import 'package:todo/views/todos_views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TodosController todosController = Get.put(TodosController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Todos'),
        ),
        body: TodosViews(todosController: todosController),
      ),
    );
  }
}
