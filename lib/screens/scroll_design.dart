

import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final boxDecoration = const BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter, 
          stops: [0.5,0.5],
          colors: [ 
          Color(0Xff5EE8C5),
          Color(0xff30BAD6),
          
          ],
          
        ),);
    return Scaffold(
      body: Container(
        // ignore: prefer_const_constructors
        decoration: boxDecoration,
        child: PageView(
          physics:  const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children:  const [
          Screen1(),
          Page2(),
        
        ],
        ),
      )
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  const[
        //BACKGROUND 
        Background(),

        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(fontSize: 60 ,fontWeight: FontWeight.bold , color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const SizedBox(
            height: 40,
          ),
           const Text('11°', style: textStyle,),
           const Text('Miercoles', style:  textStyle,),
           Expanded(child: Container()),
           const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: const Color(0xff30BAD6),
     height: double.infinity,
     alignment: Alignment.topCenter,
    child: const Image(image: AssetImage('assets/scroll-1.png'),));
  }
}



class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0098FA),
      
      child: Center(child: TextButton(onPressed: (){},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30),),
      ),
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xff30BAD6),
        shape: const StadiumBorder()
      ),
      ),
      ),
    ); 
  }
}