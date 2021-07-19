import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_card/Card.dart';
class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  String name = '';
  int contact = 0;
  String age = '';
  String email = '';
  String job = '';
  String img = '';
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final callController = TextEditingController();
  final imageController = TextEditingController();
  void clearData(){
    this.name = "";
    this.email = "";
    this.age = '';
    this.contact=0;
    this.img = '';

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: ListView(
         children:[
           Center(
             child: CircleAvatar(
               backgroundImage: AssetImage('Images/gifys.gif'),
               radius: 60.0,
             ),
           ),
         SizedBox(
           height: 10.0,
         ),
         Card(
           color: Colors.black,
           margin: EdgeInsets.only(left: 45.0,right: 45.0),
           child: Center(child: Text('Enter Your Details!',style: TextStyle(fontSize: 20.0,color: Colors.white,fontFamily: 'Uchen'),)),
         ),
         Expanded(
           child: Container(
             margin: EdgeInsets.all(40.0),
             height: 350.0,
             width: 350.0,
             decoration: BoxDecoration(
               color: Colors.green,
               borderRadius: BorderRadius.circular(15.0),
             ),
             child: ListView(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     maxLength: 15,
                     controller: nameController,
                     keyboardType: TextInputType.text,
                     onChanged: (text) {
                       name = text;
                     },
                     decoration: InputDecoration(
                       labelText: 'Name',
                       hintText: 'ex.CodexRitik',
                       prefixIcon: Icon(Icons.account_circle_rounded),
                       suffixIcon: IconButton(
                         icon: Icon(Icons.clear_rounded,color: Colors.red,),
                         onPressed: (){
                           setState(() {
                             nameController.clear();
                           });
                         },
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(80.0)),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     maxLength: 20,
                     controller: emailController,
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
                       labelText: 'Email',
                       hintText: 'ex.xyz@gmail.com',
                       prefixIcon: Icon(Icons.email_outlined),
                       suffixIcon: IconButton(
                         icon: Icon(Icons.clear_rounded,color: Colors.red,),
                         onPressed: (){
                           setState(() {
                             emailController.clear();
                           });
                         },
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(80.0)),
                       ),
                     ),
                     onChanged: (text) {
                       email = text;
                     },
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     maxLength: 13,
                     controller: callController,
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                       labelText: 'Phone No.',
                       hintText: 'ex. +916201374668',
                       prefixIcon: Icon(Icons.call),
                       suffixIcon: IconButton(
                         icon: Icon(Icons.clear_rounded,color: Colors.red,),
                         onPressed: (){
                           setState(() {
                             callController.clear();
                           });
                         },
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(80.0)),
                       ),
                     ),
                     onChanged: (text) {
                       contact = int.parse(text);
                     },
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     controller: imageController,
                     keyboardType: TextInputType.text,
                     decoration: InputDecoration(
                       labelText: 'Network Image Address',
                       //hintText: 'ex. +916201374668',
                       prefixIcon: Icon(Icons.image),
                       suffixIcon: IconButton(
                         icon: Icon(Icons.clear_rounded,color: Colors.red,),
                         onPressed: (){
                           setState(() {
                             imageController.clear();
                           });
                         },
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(80.0)),
                       ),
                     ),
                     onChanged: (text) {
                       img = text;
                     },
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     maxLength:10,
                     controller: ageController,
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                       labelText: 'Date Of Birth',
                       hintText: 'ex. 17-07-2001 ',
                       prefixIcon: Icon(Icons.add_box),
                       suffixIcon: IconButton(
                         icon: Icon(Icons.clear_rounded,color: Colors.red,),
                         onPressed: (){
                           setState(() {
                             ageController.clear();
                           });
                         },
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(80.0)),
                       ),
                     ),
                     onChanged: (text) {
                       age = text;
                     },
                   ),
                 ),
               ],
             ),
           ),
         ),
         Center(
           child: ElevatedButton(
               onPressed: (){
                 setState(() {
                   String n = name;
                   String e = email;
                   int c = contact;
                   String a = age;
                   String imges = img;
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Cards(n, e, a, c,imges),),);
                   clearData();
                 });
               },
               child: Text('Submit',style: TextStyle(fontSize: 15.0),),
           ),
         )
        ],
       ),
      ),
    );
  }
}
