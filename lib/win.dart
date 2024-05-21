import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  const Win({super.key});

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    return Container( margin: EdgeInsets.symmetric(horizontal: 20),
      height: 100,width:double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(
          color: Colors.black,
          blurRadius: 50,
        )]
      ),
      child: Center(
        child: Text('Congratulation\n You have won Lottery',
          style: TextStyle(fontSize: 30,color: Colors.green),),
      ),
    );
  }
}
