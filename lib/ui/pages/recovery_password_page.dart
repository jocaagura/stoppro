import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';

class RecoveryPasswordPage extends StatelessWidget {
  const RecoveryPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: Center(
          child: Text('Recovery password page'),
        ));
  }
}