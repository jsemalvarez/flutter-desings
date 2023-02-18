import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const[
        TableRow( children: [
          _SingleCard(icon: Icons.food_bank, text: 'Comer', color: Colors.blue,),
          _SingleCard(icon: Icons.local_shipping, text: 'Llevar', color: Colors.red,),          
        ]),
         TableRow( children: [
          _SingleCard(icon: Icons.food_bank, text: 'Comer', color: Colors.blue,),
          _SingleCard(icon: Icons.local_shipping, text: 'Llevar', color: Colors.red,),          
        ]),
         TableRow( children: [
          _SingleCard(icon: Icons.food_bank, text: 'Comer', color: Colors.blue,),
          _SingleCard(icon: Icons.local_shipping, text: 'Llevar', color: Colors.red,),          
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    super.key, 
    required this.icon, 
    required this.color, 
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration( 
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar( 
            backgroundColor: color,
            radius: 30,
            child: Icon(icon, size: 35,),
          ),
          const SizedBox(height: 10,),
          Text(text, style: TextStyle(color: color, fontSize: 18)),
        ],
      ),
    );
  }
}