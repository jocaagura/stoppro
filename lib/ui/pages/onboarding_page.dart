import 'package:flutter/material.dart';

import '../../blocs/navigation_bloc.dart';
import '../../blocs/sesion_bloc.dart';
import '../../blocs/size_bloc.dart';
import '../widgets/background_widget.dart';
import '../widgets/my_image_widget.dart';
import 'landing_page.dart';
import 'login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageWidth = sizeBloc.getWidthByPercent(0.6068).clamp(100.0, 400.0);

    Future.delayed(const Duration(milliseconds: 7000), () {
      if (sesionBloc.isLogged) {
        navigationBloc.pushAndReplacement(
            context, 'landing', const LandingPage());
      } else {
        navigationBloc.pushAndReplacement(
            context, 'loginpage', const LoginPage());
      }
    });

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
