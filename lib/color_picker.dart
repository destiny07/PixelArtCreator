import 'package:flutter/material.dart';
import 'package:pixelart_generator/color_item.dart';
import 'package:pixelart_generator/pixel_provider.dart';
import 'package:provider/provider.dart';

class ColorPicker extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Consumer<PixelProvider>(
        builder: (context, provider, _) { 
          return Row(
            children: <Widget>[
              _createColorItem(provider, Colors.redAccent),
              _createColorItem(provider, Colors.blueAccent),
              _createColorItem(provider, Colors.yellowAccent),
              _createColorItem(provider, Colors.black),
              _createColorItem(provider, Colors.greenAccent),
              _createColorItem(provider, Colors.white),
              _createColorItem(provider, Colors.orangeAccent),
              _createColorItem(provider, Colors.purpleAccent)
            ],
          );
        }
      )
    );
  }

  Widget _createColorItem(
    PixelProvider provider, 
    Color color
  ) {
    var borderColor = provider.currentColor == color
        ? Colors.lightBlueAccent
        : Colors.black;
    return ColorItem(
      color: color,
      borderColor: borderColor,
      onTapped: (color) {
        provider.currentColor = color;
      }
    );
  }

}