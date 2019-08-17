import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PixelProvider with ChangeNotifier {
  List<Color> _pixelGrid = List<Color>(100);
  Color _currentColor = Colors.black;

  PixelProvider() {
    _initPixelGrid();
  }

  get currentColor => _currentColor;

  set currentColor(Color newColor) {
    _currentColor = newColor;
    notifyListeners();
  }

  Color getPixelColor(int index) => _pixelGrid[index];

  void colorize(int index) {
    _pixelGrid[index] = currentColor;
    notifyListeners();
  }

  void resetPixelGrid() {
    _initPixelGrid();
    notifyListeners();
  }

  void _initPixelGrid() {
    for(int i=0;i<100;i++) {
      _pixelGrid[i] = Colors.white;
    }
  }
}