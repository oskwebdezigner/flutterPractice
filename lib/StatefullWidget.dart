import 'package:flutter/material.dart';

class StateFullWidget extends StatefulWidget {
  const StateFullWidget({super.key});

 

  @override
  State<StateFullWidget> createState() => _StateFullWidgetState();
}

class _StateFullWidgetState extends State<StateFullWidget> {

   TextEditingController itemName = TextEditingController();

   List entries = [
    // 'a', 'b', 'c'
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Colors.white,
        child: Column(
          children:<Widget> [
            Expanded(
              flex:1,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color:  Color.fromRGBO(25, 0, 84, 1),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        BackButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },

                       )
                    ],
                  ),
                   const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Todo List', style: TextStyle(color: Colors.white, fontSize: 20.0),)
                    ],
                    ),
                    const SizedBox(height:50, width:50)
                  ],
                ),
                // 
              )
              ),
              Expanded(
              flex:5,
              child: Container(
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                  color:  Color.fromRGBO(25, 0, 84, 1),
                ),
                child:Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(15,15,15,0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex:3,
                            child:
                              TextFormField(
                                controller: itemName,
                                style: const TextStyle(color: Color.fromRGBO(25, 0, 84, 1),),
                                decoration: InputDecoration(
                                  hintText: 'Add Item', 
                                  hintStyle: const TextStyle(color: Color.fromRGBO(25, 0, 84, 1),),
                                  prefixIconColor: const Color.fromRGBO(25, 0, 84, 1),
                                  border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                  prefixIcon: const Icon(Icons.add),
                                 
                                  focusColor: Colors.white,
                                  
                                  labelStyle: const TextStyle(color: Colors.white),
                              ),
                              validator: (value){
                                  if(value == null || value.isEmpty) { return 'Please enter New Item';}
                                return null;
                              },
                              )
                            
                          ),
                            Expanded(
                            flex:1, 
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(25, 0, 84, 1),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(color: Colors.green, decorationStyle: TextDecorationStyle.dashed)
                              ),
                              onPressed: () {
                                if (itemName.text.isNotEmpty) {
                                  setState(() {
                                    entries.add(itemName.text);
                                    itemName.clear();
                                  });
                                }
                              },
                            child: const Text('Add'),
                            )
                            )
                        ],
                      ),
                      // const SizedBox(height:50),
                      entries.isNotEmpty ?
                      Expanded( 
                        child: ListView.builder(
                        
                        padding: const EdgeInsets.fromLTRB(10,50, 10,10),
                        itemCount: entries.length,
                        itemBuilder: (BuildContext context, int index) {
                          // print(index);
                          // var lastItem = index == entries.length - 1;

                          return Container(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0,0),
                            margin:index == 0 ? const EdgeInsets.all(0) : const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            decoration: BoxDecoration(
                              color: index % 2 == 0 ?const  Color.fromRGBO(25, 0, 84, 0.8) : const Color.fromRGBO(200, 120, 31, 0.7),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: 
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      // Icon(Icons.check, color: Colors.white, )
                                      Text('${index + 1}', style: const TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                  const SizedBox(width:20),
                                  Expanded(
                                    flex:1,
                                    child: 
                                      Text('${entries[index]}', style: const TextStyle(color: Colors.white),)
                                    
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextButton(onPressed: () {
                                        setState(() {
                                          entries.removeAt(index);
                                        });
                                      }, child: const Icon(Icons.delete, color: Colors.white)),
                                      
                                    ],)
                                  ],
                                  
                              ),
                          );
                        }
                      )
                        ) : const Padding(
                          padding:  EdgeInsets.fromLTRB(10,50, 10,10),
                          child:  Center(child: Text('No items')),
                        ),
                    ],
                  ),
                  )
                )
              )
              
          ],
        )
      )
    );
  }
}