import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container( 
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Titulo de la pagina', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Subtitulo de la pagina donde se explica un poco de que trata',style: TextStyle(fontSize: 16, color: Colors.white))
          ],
        )
      ),
    );
  }
}