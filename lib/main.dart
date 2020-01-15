import 'package:flutter/material.dart';
import 'dart:math';

import './quote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var randomNumber = Random();
  String _quote = 'frases celebres de peñalosa';

  var penaTweets = [
    '"A diferencia de otros antes y ahora, jamás desobedezco un semáforo con motos, jamás motos o carros con licuadoras luminosas, discreción, casi sin escoltas frecuentemente sin ellos..."',
    '"A la gente le parece muy sexy meterse como ratas en un metro subterráneo"',
    '"Las líneas de metro siempre se hacen bien, porque si no se hacen bien, entonces los metros se estrellan y la gente se mata"',
    '"Un metro elevado será como volar bajito en helicóptero"',
    '"El artefacto que explotó en el Andino estaba diseñado para matar gente"',
    '"Un ladrón no es alguien que nació ladrón, no. Nadie nace ladrón. El ladrón es el que roba. Entonces, el que roba es un ladrón"'
  ];

  void newQuote() {
    var quotesLength = penaTweets.length - 1;
    var quoteIndex = randomNumber.nextInt(quotesLength);
    setState(() {
      _quote = penaTweets[quoteIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Frases peñalosisticas')),
      body: Column(
        children: <Widget>[
          Quote(_quote),
          RaisedButton(
            color: Colors.blue,
            child: Text(
              'más frases',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onPressed: newQuote,
          )
        ],
      ),
    ));
  }
}
