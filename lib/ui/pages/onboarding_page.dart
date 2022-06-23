import 'package:flutter/material.dart';
import 'package:stoppro/ui/widgets/my_input_widget.dart';

import '../widgets/background_widget.dart';
import '../widgets/my_image_widget.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        child: Column(
          children: [
            Center(
              child: MyImageWidget(size: Size(150.0, 300.0),),
    ),
            MyInputWidget()
          ],
        ),

    );
  }
}


