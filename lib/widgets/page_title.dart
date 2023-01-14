import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify Transaction', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Classify This Transaction into a particular category',style: TextStyle(fontSize: 20,  color: Colors.white),)
            
            ],
        ),
      ),
    );
  }
}