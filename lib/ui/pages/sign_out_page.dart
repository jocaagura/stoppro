import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';

class SignOutPage extends StatelessWidget {
  const SignOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: Center(
          child: Text('Salida o envio de link de contraseña page'),
        ));
  }
}