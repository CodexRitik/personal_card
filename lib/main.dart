import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Input.dart';

void main() => runApp(PersonalCard());

class PersonalCard extends StatelessWidget {
  const PersonalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello User!',style: TextStyle(fontSize: 35.0,color: Colors.white,fontFamily: 'Satisfy'),),
                    Icon(Icons.person,size: 45.0,color: Colors.white,),
                  ],
                ),
                Text('Welcome Here',style: TextStyle(fontSize: 35.0,color: Colors.white,fontFamily: 'Satisfy'),),
                SizedBox(
                  height: 110.0,
                ),
              ],
            ),
          ),
          backgroundColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2100),bottomRight: Radius.circular(800)),
          ),
        ),
        body: Input(),
      )
    );
  }
}
