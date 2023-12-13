import 'package:flutter/material.dart';


class PracticeShape extends StatelessWidget {
  const PracticeShape({super.key});

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
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40))
                ),
                child: const Column(
                  
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Text('cdf'),

                  ],
                )
                ),
              ),
              ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(40))
                  ),

                )
              ),
              ),
        ]
        ),
    ),
   );
  }
}