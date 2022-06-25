import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: Center(
          child: Text('Landing page'),
        ));
  }
}