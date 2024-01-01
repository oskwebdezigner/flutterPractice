import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'string_extension.dart';
// import 'package:myapp/Contact.dart';

class TodoListWIthMultipleFields extends StatefulWidget {
  const TodoListWIthMultipleFields({super.key});

  @override
  State<TodoListWIthMultipleFields> createState() => _TodoListWIthMultipleFieldsState();
}


class _TodoListWIthMultipleFieldsState extends State<TodoListWIthMultipleFields> {

  final Contact _contact= Contact();
  final List<Contact> _contacts = [];

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            flex:1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(25, 0, 84, 1),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), )
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     BackButton(
                      color: Colors.white,
                     ),
                     Text('Contact List', style: TextStyle(color: Colors.white, fontSize: 30.0),),
                     SizedBox(width:50.0)

                    ],
                ),
            )
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: const Color.fromRGBO(25, 0, 84, 1),
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(20) ,
                  decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),)
                ),
                child: Column(
                  
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[_form(), _list()],
                )
                ),
              ),
              ),
            
        ]
        ),
    ),
   );
  }

  _form() => Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                const Text('Your Name', textAlign: TextAlign.start, textDirection: TextDirection.rtl, style: TextStyle(color: Color.fromRGBO(25, 0, 84, 1))),
                TextFormField(
                  controller: _name,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Your Name', 
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIconColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(Icons.person),
                    filled: true,
                    focusColor: Colors.white,
                    fillColor: const Color.fromRGBO(25, 0, 84, 1),
                    labelStyle:   const TextStyle(
                      color: Colors.white
                    ),
                  ),
                  inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[a-z ]'))],
                  textInputAction: TextInputAction.next,
                  validator: (value){
                    if(value == null || value.isEmpty) { return 'Enter Your Name';}
                      return null;
                  },
                  onSaved: (val) => setState(() => _contact.name = val),
                ),
                const SizedBox(height:20),
                const Text('Your Number', textAlign: TextAlign.start, style: TextStyle(color: Color.fromRGBO(25, 0, 84, 1))),
                  TextFormField(
                    controller: _phone,
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                    ],
                    decoration: InputDecoration(
                      hintText: 'Mobile Number', 
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIconColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      prefixIcon: const Icon(Icons.phone),
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: const Color.fromRGBO(25, 0, 84, 1),
                      labelStyle: const TextStyle(color: Colors.white),
                    ),
                    validator: (value) {
                      if(value!.length != 11) { 
                        return 'Please enter Correct Number';
                        }
                        
                    },
                    onSaved: (val) => setState(() => _contact.phone = val),
                  ),
                  const SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 35),
                      
                          backgroundColor: const Color.fromRGBO(255, 146, 40, 1),
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 16.0)
                        ),
                        child:const  Text('Submit'),
                        onPressed: () => _onSubmit(),
                      ),
                    ],
                  ),
            ],
          ),
        ),
      );


_list() => _contacts.isNotEmpty ? Expanded(
    child: Card(
      margin:const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  // leading: const Icon(
                  //   Icons.person_2_rounded,
                  //   color: Color.fromRGBO(255, 146, 40, 1),
                  //   size: 30.0,
                  // ),
                  
                  leading: Text((index + 1).toString()),
                  title: Text(
                     _contacts[index].name!.toCapitalized(),
                    style: const TextStyle(
                        color: Color.fromRGBO(25, 0, 84, 1), fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    _contacts[index].phone.toString(),
                    style: const TextStyle(
                        color: Color.fromRGBO(255, 146, 40, 1)),
                    ),
                    trailing: 
                    TextButton(onPressed: () {
                      setState(() {
                        // _contacts[index].removeAt(index);
                        _contacts.removeAt(index);
                      });
                      }, 
                     child: const Icon(Icons.delete, color: Color.fromRGBO(255, 146, 40, 1))),
                     
                  onTap: () {
                    setState(() {
                      _name.text = _contact.name!;
                      _phone.text = _contact.phone!;
                    });
                  },
                ),
                const Divider(
                  height: 5.0,
                ),
              ],
            );
          },
          itemCount: _contacts.length,
        ),
      ),
    ),
  ) : const Padding(
        padding:  EdgeInsets.fromLTRB(10,30, 10,10),
        child:  Center(child: Text('No items')),
      );

_onSubmit() async {
  var form = _formKey.currentState;
  form?.save();
  if (_formKey.currentState!.validate()) {
    setState(() {
      form?.reset();
    _contacts.add(Contact(id:null,name:_contact.name,phone:_contact.phone));
    
    });
    
  }
}

  
}

class Contact {

  Contact({this.id,this.name,this.phone});

  int? id;
  String? name;
  String? phone;
}
