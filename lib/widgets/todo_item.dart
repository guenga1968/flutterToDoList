import 'package:calcumat/constants/colors.dart';
import 'package:flutter/material.dart';
import '../models/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
   final onToDoChange;
   final onDeleteItem;

  const ToDoItem({super.key, required this.todo, required this.onToDoChange, required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: ListTile(
        onTap: () {
         onToDoChange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            onPressed: () {
              onDeleteItem(todo.id);
            },
            icon: const Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
