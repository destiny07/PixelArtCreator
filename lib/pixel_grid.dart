import 'package:flutter/material.dart';
import 'package:pixelart_generator/pixel_provider.dart';
import 'package:provider/provider.dart';

class PixelGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<PixelProvider>(
      builder: (context, provider, _) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.5
          )
        ),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 10,
            childAspectRatio: 1
          ),
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                provider.colorize(index);
              },
              child: Container(
                child: Container(
                  color: provider.getPixelColor(index)
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5
                  )
                )
              )
            );
          }
        )
      )
    );
  }

}