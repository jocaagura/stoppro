import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(
        child: Center(
          child: Text('Pagina registro usuario nuevo'),
        ));
  }
}