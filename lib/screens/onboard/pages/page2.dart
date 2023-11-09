import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [HexColor('#009ECD'), HexColor('#7DCED1')])),
      child: const Stack(
        children: [],
      ),
    );
  }
}
