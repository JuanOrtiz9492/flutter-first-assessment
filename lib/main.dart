import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var  randomNumber = Random();
  var  penaTweets = [
    '"A diferencia de otros antes y ahora, jamás desobedezco un semáforo con motos, jamás motos o carros con licuadoras luminosas, discreción, casi sin escoltas frecuentemente sin ellos..."',
    '"A la gente le parece muy sexy meterse como ratas en un metro subterráneo"',
    '"Las líneas de metro siempre se hacen bien, porque si no se hacen bien, entonces los metros se estrellan y la gente se mata"',
    '"Un metro elevado será como volar bajito en helicóptero"',
    '"El artefacto que explotó en el Andino estaba diseñado para matar gente"',
    '"Un ladrón no es alguien que nació ladrón, no. Nadie nace ladrón. El ladrón es el que roba. Entonces, el que roba es un ladrón"'
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          title: Text('new App')
        ),
        body: Center( 
          child: Text(penaTweets[randomNumber.nextInt(penaTweets.length)])
        ),
        )
    );
  }
}

