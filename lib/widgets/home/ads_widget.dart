import 'dart:async';
import 'package:flutter/material.dart';

class AdsWidget extends StatefulWidget {
  AdsWidget({super.key});

  final List<Map> _items = [
    {'img': 'ad1.png', 'text': 'Text1'},
    {'img': 'ad2.jpeg', 'text': 'Text2'},
    {'img': 'ad3.png', 'text': 'Text3'}
  ];

  // ? : value null
  Timer? _timer;
  int _index = 0;
  @override
  State<AdsWidget> createState() => _AdsWidgetState();
}

class _AdsWidgetState extends State<AdsWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget._timer = Timer.periodic(const Duration(seconds: 3), _setTimer);
  }

  void _setTimer(Timer timer) {
    print('soulaimane');
    setState(() {
      if (widget._index >= widget._items.length - 1) {
        widget._index = 0;
      } else {
        widget._index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //le mot-cle widget permet d'acceder au widget a partir de la classe de l'etat de widget
        Image.asset('assets/img/${widget._items[widget._index]['img']}'),
      ],
    );
  }
}
