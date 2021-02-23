import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> todoList = <String>[];
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Todo App",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ],
              ),
              Row(
                children: [
                  Flexible(
                      child: TextField(
                    controller: myController,
                    decoration: InputDecoration(labelText: "Enter Todo item"),
                  ))
                ],
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    var count = 1;
                    todoList.add(myController.text);
                    print("New TodoList $todoList");
                  });
                },
                color: Colors.blueAccent,
                child: Text("Add to List"),
              ),
              Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: todoList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            child: SizedBox(
                                height: 50,
                                width: 100,
                                child:
                                    Center(child: Text("${todoList[index]}"))));
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
