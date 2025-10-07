import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  var todos = <String>[].obs;

  void add(String task) {
    if (task.isNotEmpty) todos.add(task);
  }

  void delete(int index) => todos.removeAt(index);
}

class TodoApp extends StatelessWidget {
  final controller = Get.put(TodoController());
  final textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX To-Do')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: textCtrl,
              decoration: InputDecoration(
                hintText: 'Enter task',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    controller.add(textCtrl.text);
                    textCtrl.clear();
                    Get.snackbar('Task Added', 'Keep going!');
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.todos.length,
                itemBuilder: (_, i) => ListTile(
                  title: Text(controller.todos[i]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => controller.delete(i),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
