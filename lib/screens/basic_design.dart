import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        //image
        children: [const Image(image: AssetImage('assets/landscape.jpg')),
        
        //title widget
       const Title(),

       //Buttom section
       const ButtomSection(),

       Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: const Text('Nulla qui laboris excepteur cillum reprehenderit aliqua voluptate duis occaecat nulla. Ut sint velit exercitation do aliquip. Enim non ea est minim incididunt minim laborum non esse eu incididunt nostrud. Nostrud Lorem magna consectetur tempor excepteur occaecat Lorem consequat cillum aute irure proident. Minim elit mollit exercitation Lorem id aliquip id dolor enim pariatur quis. Nulla culpa occaecat adipisicing anim deserunt in ex do pariatur est nisi.In laboris irure est ex occaecat ut reprehenderit officia. Sint id elit ex sint eiusmod ad quis enim occaecat sunt pariatur enim aute. Est Lorem qui reprehenderit in non non laboris. Occaecat ipsum id irure quis duis anim aliqua aliqua veniam. Dolor commodo quis minim non, Sunt et veniam et sunt officia non sit id proident sint aute elit. Laboris eiusmod eiusmod reprehenderit sunt cupidatat consequat nisi laborum. Voluptate pariatur eu cupidatat voluptate nisi eu aliqua reprehenderit ut est ea cillum occaecat minim. Ea aute commodo qui laborum ipsum labore duis id deserunt. Nostrud aliquip sint cillum magna do esse incididunt qui excepteur culpa..Sint ex do non elit laboris et voluptate proident commodo. Aliqua et incididunt deserunt labore ullamco velit anim eu anim excepteur eu adipisicing irure consectetur. Sint est commodo minim in aute ea non quis nostrud. Aliqua Lorem laboris laborum enim labore mollit amet irure. Culpa sit laborum cupidatat consectetur veniam culpa aliqua. Aute voluptate velit adipisicing est et anim veniam laborum.')
        )
        
        ],
      )
    );
  }
}



class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
           Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
           Text('kandersteg, Switzerland', style: TextStyle(color: Colors.black),),
      
          
        ],
       ),
       Expanded(child: Container()),

       const Icon(Icons.star_rate, color: Colors.red,),
       const Text('41'),

      ],),
    );
  }
}

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
           CustomBottom(icon: Icons.call, text: 'Call',),
           CustomBottom(icon: Icons.map, text: 'Route',),
           CustomBottom(icon: Icons.share, text: 'Share',),
          
          
          
        ],
    ),
      );
    
  
    
  }
}

class CustomBottom extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomBottom({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Icon(icon, color: Colors.blue, size: 30,),
    Text(text, style: const TextStyle(color: Colors.blue,))
      ]
    );
  }
}