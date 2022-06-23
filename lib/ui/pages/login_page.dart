import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: Center(
          child: Text('Loading page'),
        ));
  }
}
