import 'package:flutter/material.dart';
import 'package:stoppro/blocs/size_bloc.dart';

import '../widgets/background_widget.dart';
import '../widgets/my_image_widget.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageWidth = sizeBloc.getWidthByPercent(0.6068).clamp(100.0, 400.0);
    return BackgroundWidget(
        child: Stack(
      children: [
        Positioned(
          top: imageWidth,
          left: sizeBloc.getWidthByPercent(0.1966),
          child: MyImageWidget(
            size: Size(imageWidth, imageWidth),
          ),
        )
      ],
    ));
  }
}
