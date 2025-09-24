import 'package:flutter/material.dart';
import 'package:todo_list/model/todo_item_model.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final itemNameController = TextEditingController();
  final descriptionController = TextEditingController();
  void saveItem() {
    final itemName = itemNameController.text.trim();
    final description = descriptionController.text.trim();

    if (itemName.isEmpty || description.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all the fields')),
      );

      return;
    }

    TodoItemModel todoItem = TodoItemModel(
      name: itemName,
      description: description,
    );

    Navigator.pop(context, todoItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Item')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 24,
          children: [
            TextField(
              controller: itemNameController,
              decoration: InputDecoration(
                labelText: 'Item Name',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(onPressed: saveItem, child: Text('Add Item')),
          ],
        ),
      ),
    );
  }
}
