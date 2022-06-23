import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: Center(
          child: Text('Loading page'),
        ));
  }
}