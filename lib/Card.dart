import 'package:flutter/material.dart';
class Cards extends StatelessWidget {
  String pName = "";
  String pEmail = "";
  String pAge = '';
  int pContact = 0;
  String imageAdd = '';
  Cards(String name,String email,String age,int call,String iAdd){
    pName = name;
    pEmail = email;
    pAge = age;
    pContact = call;
    imageAdd = iAdd;
  }
  Widget Info(Icon ex,String txt,String txtVal){
    return Row(
      children: [
        ex,
        SizedBox(width: 5.0,),
        Text('$txt : $txtVal',style: TextStyle(fontSize: 20.0,fontFamily: 'Uchen'),)
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Personal Card'),
        backgroundColor: Colors.black87,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Center(child: Text('Personal Card',style: TextStyle(fontSize: 20.0,fontFamily: 'Uchen'),),),
                  SizedBox(child: Divider(height: 2.0,color: Colors.black,),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('$imageAdd'),
                      radius: 25.0,
                    ),
                  ),
                  Info(Icon(Icons.account_circle_rounded),'Name',pName),
                  Info(Icon(Icons.email),'Email',pEmail),
                  Info(Icon(Icons.add_box),'Age',pAge.toString()),
                  Info(Icon(Icons.call),'Contact No',pContact.toString()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
