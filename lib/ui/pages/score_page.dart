import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';

class ScorePagePage extends StatelessWidget {
  const ScorePagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: Center(
          child: Text('Score page'),
        ));
  }
}