import 'package:flutter/material.dart';
import 'package:pixelart_generator/color_picker.dart';
import 'package:pixelart_generator/pixel_grid.dart';
import 'package:pixelart_generator/pixel_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final pixelProvider = PixelProvider();
    return ChangeNotifierProvider(
      builder: (context) => pixelProvider,
      child: Scaffold(
        appBar: AppBar(
          title: Text('PixelArt Generator'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                pixelProvider.resetPixelGrid();
              },
            )
          ],
        ),
        body: Column(
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: PixelGrid()
            ),
            ColorPicker(),
          ]
        )
      )
    );
  }

}