import 'package:flutter/material.dart';
import '../../blocs/size_bloc.dart';

class MyInputWidget extends StatelessWidget {
  const MyInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Container(
      color: Colors.blue,
      width: sizeBloc.width * 0.9,
      height: 80.0,
    );
  }
}
