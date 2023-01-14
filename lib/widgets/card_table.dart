import 'dart:ui';

import 'package:flutter/material.dart';
class CardTable extends StatelessWidget {
  const CardTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            
            _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'General',),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.emoji_transportation, text: 'Transport',),
            
           

          ] 
          
          ),
          TableRow(
          children: [
            
            _SingleCard(color: Colors.purple, icon: Icons.map, text: 'Mapa',),
            _SingleCard(color: Colors.purple, icon: Icons.car_rental, text: 'Auto',),
            
           

          ] 
          
          ),
          TableRow(
          children: [
            
            _SingleCard(color: Colors.red, icon: Icons.shop, text: 'Tienda',),
            _SingleCard(color: Colors.red, icon: Icons.monetization_on, text: 'Precios',),
            
           

          ] 
          
          ),
          TableRow(
          children: [
            
            _SingleCard(color: Colors.deepOrangeAccent, icon: Icons.rule_sharp, text: 'Reglas',),
            _SingleCard(color: Colors.purpleAccent, icon: Icons.document_scanner, text: 'Escaner',),
            
           

          ] 
          
          ),
          TableRow(
          children: [
            
            _SingleCard(color: Colors.deepPurpleAccent, icon: Icons.support_agent_sharp, text: 'Atencion al publico',),
            _SingleCard(color: Colors.purpleAccent, icon: Icons.book_rounded, text: 'Librerias',),
            
           

          ] 
          
          ),
       
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({ Key? key, required this.icon, required this.color, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icon, size: 35, color: Colors.white,),
                  radius: 30,
                ),
                const SizedBox(height: 10,),
                Text(text, style: const TextStyle(color: Colors.blue,fontSize: 16),)
              ],
            );
    return _CardBackground(
      child: column,
      );
  }
}

class _CardBackground extends StatelessWidget {
 

  final Widget child;

  const _CardBackground({
    Key? key,
     required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}