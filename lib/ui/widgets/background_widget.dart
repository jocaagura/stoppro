import 'package:flutter/material.dart';

import '../../blocs/size_bloc.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    final width = (sizeScreen.width - 16).clamp(200.0, 460.0);
    sizeBloc.width = width;
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child:
              SizedBox(width: width, height: sizeScreen.height, child: child)),
    );
  }
}
