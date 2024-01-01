import 'package:flutter/material.dart';
import 'package:myapp/StatefullWidget.dart';
import 'package:myapp/practiceShape.dart';


class TodoList extends StatelessWidget {
  const TodoList({super.key});

  

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      color: Colors.amber,
      child: Column(
        children: <Widget>[
          Expanded(
            flex:1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), )
                ),
                child: const Center(
                  child: Text('Todo List', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
            )
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.black,
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(20) ,
                  decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40))
                ),
                child: 
                ElevatedButton(
                  child:const Text('Todo List Screen'),
                  onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const StateFullWidget()),
                  );
                },)
                
                ),
              ),
              ),
        ]
        ),
    ),
   );
  }
}