
import 'package:flutter/material.dart';

class CounterNotifierModel extends ChangeNotifier{
  int counter;

  CounterNotifierModel(int startingValue){
    this.counter = startingValue;
  }
  void incrementCounter(){
    counter++;

    notifyListeners();
  }
}