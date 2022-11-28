import 'package:flutter/material.dart';

abstract class BaseViewModel {
  BuildContext? context;

  void setContext(BuildContext context) {
    this.context = context;
  }

  /* void navigateToBack() {
    AppNavigator.pop();
  } */

  void init();
}
