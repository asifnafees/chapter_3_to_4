import 'package:chapter_3_to_4/constants.dart';
import 'package:chapter_3_to_4/lost.dart';
import 'package:chapter_3_to_4/win.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x=0;
  Random random=Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar( title: Text('Lottery App',
        style: TextStyle(color: MyColorText,fontWeight: FontWeight.w700,fontSize: 30),),centerTitle: true,
        backgroundColor: CupertinoColors.inactiveGray,
       ),
      body: Column(children: <Widget>[
        SizedBox(height: 100,),
        Text('Lottery winning number is 4',style: TextStyle(
            color: MyColorText,fontSize: 20
        ),),
        SizedBox(height: 20,),
        Container(
          child: Column(children: [
            Center(
              child: Container( height: 200,width: 200,
                decoration: BoxDecoration(color: CupertinoColors.inactiveGray),
                child: Column(children: [
                    Text(x.toString(),style: TextStyle(fontSize: 100),),
                    Text('Your Number',
                      style: TextStyle(color: MyColorText,fontSize:20 ),)
                ],)
              ),
            )//
          ],)), //heroSection
        SizedBox(height: 20,),
        InkWell(
          onTap: () {
            x=random.nextInt(10);
           setState(() {
           });
          },
          child: Container(
            height: 50,width: 200,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(40)
            ),
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.not_started,color: MyColorText,),
              Text('Start',style: TextStyle(color: MyColorText),)
            ],)
          ),
        ),
        SizedBox(height: 70,),
        x==4?Win():Lost()
      //button
      ],),

    );
  }
}
