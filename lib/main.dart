import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
  body: UsersList(),
  appBar: AppBar(title: Text("Group")),)
  ));
}

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  final List<String> users = [
    "Наговицын",
    "Сидоров",
    "Исаев",
    "Ланович",
    "Гладкий",
    "Нуртдинов",
    "Петров"
    "Антонов"
  ];
  final List<String> authors = ["Наговицын", "Исаев", "Гладкий"];
  @override
  Widget build(BuildContext context)  {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        if (authors.contains(users[index])) {
          return Text(users[index],
            style: TextStyle(color: Color.fromARGB(255, 137, 146, 14)));
        }
        return Text(users[index]);
      }
    );
  }
}