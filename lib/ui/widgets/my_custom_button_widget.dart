import 'package:flutter/material.dart';

import '../../blocs/size_bloc.dart';

class MyCustomButtonWidget extends StatelessWidget {
  const MyCustomButtonWidget({
    required this.label,
    required this.function,
    Key? key,
  }) : super(key: key);

  final String label;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);


    final radius = sizeBloc.getWidthByPercent(0.05);
    final height = sizeBloc.getWidthByPercent(0.075, 60.0);

    return MaterialButton(
      onPressed: function,
      child: Container(
        alignment: Alignment.center,
        width: sizeBloc.getWidthByPercent(0.3),
        height: height,
        decoration: BoxDecoration(
          color: tema.primaryColorDark,
          borderRadius: BorderRadius.circular(radius)
        ),
        child: Text(
          label,
          style: TextStyle(color: tema.backgroundColor),
        ),
      ),
    );
  }
}
