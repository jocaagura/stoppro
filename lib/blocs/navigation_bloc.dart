import 'package:flutter/material.dart';

import '../entities/bloc_entity.dart';

class NavigationBloc extends Bloc {
  void push(BuildContext context, String route, Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  void pushAndReplacement(BuildContext context, String route, Widget page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  void dispose() {}
}


final navigationBloc = NavigationBloc();