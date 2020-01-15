import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String quote;
  Quote(this.quote);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(35),
      child: Text(
        quote,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
