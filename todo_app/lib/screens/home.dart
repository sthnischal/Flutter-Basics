import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/widgets/todo_item.dart';

import '../model/todo.dart';

class Home extends StatelessWidget {
  final todosList = ToDo.todoList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppbar(),
      // drawer: Drawer(backgroundColor: tdBGColor),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50, bottom: 20),
                      child: Text('All ToDos',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ))),
                  // ToDoItem(),
                  // ToDoItem(),
                  // ToDoItem(),
                  // ToDoItem(),
                  for (ToDo todo1 in todosList)
                    ToDoItem(
                        todo:
                            todo1), //here todo1 is just variable in loop that take value from our list
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Serch',
          hintStyle: TextStyle(color: tdGrey),

          // label: const Text('Search'),
          // border:
          //     OutlineInputBorder(borderRadius: BorderRadius.circular(20))
        ),
      ),
    );
  }

//seperate method for appbar only
  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        Container(
          width: 40,
          height: 40,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/sophia.jpg')),
        )
      ]),
    );
  }
}
