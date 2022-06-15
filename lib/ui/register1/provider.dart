import 'package:flutter/material.dart';

class SelectedStepProvider extends ChangeNotifier {
  int selectedStep = 0;
  int selectedStep2 = 0;
  PageController pageController = PageController(initialPage: 0);
  PageController pageController2 = PageController(initialPage: 0);
  void onTap(){
    pageController.nextPage(
        duration: Duration(milliseconds: 250),
        curve: Curves.bounceInOut);
    notifyListeners();
  }
  void onTap2(){
    pageController2.nextPage(
        duration: Duration(milliseconds: 250),
        curve: Curves.bounceInOut);
    notifyListeners();
  }
  void onTappedAdd() {
    selectedStep++;
    notifyListeners();
  }
  void onTappedAdd2() {
    selectedStep2++;
    notifyListeners();
  }
  void onTappedCancel() {
    selectedStep--;
    notifyListeners();
  }
  void onTappedCancel2() {
    selectedStep2--;
    notifyListeners();
  }

  void onTappedRemove() {
    selectedStep = 0;
    notifyListeners();
  }
  void onTappedRemove2() {
    selectedStep2 = 0;
    notifyListeners();
  }
}