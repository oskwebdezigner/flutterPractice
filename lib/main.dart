import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/todoList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome Adam'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(25, 4, 84, 1),
        title: Text(widget.title, style: const TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white
        ),
      ),
      body: 
      SingleChildScrollView(
      child: Container(
        color: const Color.fromRGBO(204, 204, 204, 1),
        padding: const EdgeInsets.fromLTRB(20, 35, 20, 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Container(
            // margin: const EdgeInsets.all(15),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Expanded(
                    flex:2,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Text('Know Your Lucky Number', textAlign: TextAlign.left, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 16, color:Colors.white)),
                    Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr', textAlign: TextAlign.left, style: TextStyle(fontSize: 14, color:Colors.white)),
                  ],
                    )
                    ),
                    Expanded(
                    flex:1,
                    child: 
                    Image.asset('assets/images/logo.png', width: 150, height:100),
                    ),
              
                ]
              ),
            ),
          ), 
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 25),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color:  const Color.fromRGBO(25, 0, 84, 1),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Expanded(
                    flex:2,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                    Text('Know Your Lucky Number', textAlign: TextAlign.left, textDirection: TextDirection.rtl, style: TextStyle(fontSize: 16, color:Colors.white)),
                    Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr', textAlign: TextAlign.left, style: TextStyle(fontSize: 14, color:Colors.white)),
                  ],
                    )
                    ),
                    Expanded(
                    flex:1,
                    child: 
                    Image.asset('assets/images/logo.png', width: 150, height:100),
                    ),
              
                ]
              ),
            ),
          ), 
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: TextFormField(
                    controller: firstName,
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      iconColor: Color.fromRGBO(25, 0, 84, 1),
                      icon: Icon(Icons.person),
                      hintText: 'First Name', 
                      hintStyle: TextStyle(color: Color.fromRGBO(25, 0, 84, 1),)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: TextFormField(
                    controller: lastName,
                    decoration: const InputDecoration(
                      hintText: 'Last Name', 
                      // icon:Icon(Icons.person_2),
                      hoverColor: Color.fromRGBO(25,0,84,1),
                      suffixIcon: Icon(Icons.person),
                      labelText: 'Last Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,25, 0, 15),
                  child: TextFormField(
                    controller: username,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'User Name', 
                      hintStyle: const TextStyle(color: Colors.white),
                      
                      prefixIconColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      prefixIcon: const Icon(Icons.person),
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: const Color.fromRGBO(25, 0, 84, 1),
                      labelStyle: const TextStyle(color: Colors.white),
                      suffixText: 'username'

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,10, 0, 15),
            
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Password', 
                      hintStyle: const TextStyle(color: Colors.white),
                      
                      prefixIconColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      prefixIcon: const Icon(Icons.lock),
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: const Color.fromRGBO(25, 0, 84, 1),
                      labelStyle: const TextStyle(color: Colors.white),
                      suffixText: 'password',


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                  child: TextFormField(
                    controller: email,
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.mail),
                      prefixIconColor: Colors.white,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      labelText: 'Email Address',
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: const Color.fromRGBO(25, 0, 84, 1),
                      labelStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: TextFormField(
                    controller: phone,
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      // hintText: 'Email Address', 
                      prefixIcon: const Icon(Icons.phone),
                      prefixIconColor:  Colors.white,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      labelText: 'Phone Number',
                      focusColor: const  Color.fromRGBO(25, 0, 84, 1),
                      filled: true,
                       fillColor: const  Color.fromRGBO(25, 0, 84, 1),
                      labelStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      
                    ),
                  ),
                ),
                ElevatedButton(
              // style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TodoList()),
                );
              },
              child: const Text('Enabled'),
            ),
                
              ],
            ),
          ),
          
          ] 

          
        ),

        


            
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     const Text(
        //       'You have pushed the button ras this many times:',
        //     ),
        //     Text(
        //       '$_counter',
        //       style: Theme.of(context).textTheme.headlineMedium,
        //     ),
        //   ],
        // ),

      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
