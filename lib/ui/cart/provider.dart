import 'package:flutter/material.dart';

class SelectedStepProvider extends ChangeNotifier {
  int selectedStep = 0;

  void onTappedAdd() {
    selectedStep++;
    notifyListeners();
  }

  void onTappedCancel() {
    selectedStep--;
    notifyListeners();
  }

  void onTappedRemove() {
    selectedStep = 0;
    notifyListeners();
  }
}