import 'package:flutter/material.dart';

typedef OnTapped = Function(Color color);

class ColorItem extends StatelessWidget {
  final OnTapped onTapped;
  final Color color;

  ColorItem({
    @required Color color, 
    @required OnTapped onTapped
  }) : color = color ?? Colors.white,
       onTapped = onTapped ?? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapped(color);
      },
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Container(
          height: 40.0,
          width: 40.0,
          child: Container(color: color),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
          )
        )
      )
    );
  }

}