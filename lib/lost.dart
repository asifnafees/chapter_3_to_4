import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Lost extends StatefulWidget {
  const Lost({super.key});

  @override
  State<Lost> createState() => _LostState();
}

class _LostState extends State<Lost> {
  @override
  Widget build(BuildContext context) {
    return Container( margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,width:double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(
            color: Colors.black,
            blurRadius: 50,
          )]
      ),
      child: Center(
        child: Text(' You have lost',
          style: TextStyle(fontSize: 30,color: Colors.red),),
      ),
    );
  }
}
