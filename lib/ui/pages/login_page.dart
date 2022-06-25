import 'package:flutter/material.dart';
import 'package:stoppro/blocs/size_bloc.dart';
import 'package:stoppro/helpers/helpers.dart';
import 'package:stoppro/ui/widgets/my_input_widget.dart';

import '../widgets/background_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: sizeBloc.width,
          height: sizeBloc.getWidthByPercent(
              0.5, MediaQuery.of(context).size.height * 0.4),
        ),
        MyInputWidget(
            label: 'Usuario:',
            icondata: Icons.person,
            placeholder: 'email@email.com',
            onEditingValidateFunction: (val) {
              if (Helpers.isValidEmail(val)) return null;
              return 'Escribe una direccion de correo valida';
            },
            onEditingValueFunction: (val) {}),
        MyInputWidget(
            label: 'Contraseña:',
            icondata: Icons.security,
            obscureText: true,
            onEditingValidateFunction: (val) {
              String msg = Helpers.validatePassword(val);
              if (msg.isEmpty) return null;
              return msg;
            },
            onEditingValueFunction: (val) {}),
        MyInputWidget(onEditingValueFunction: (val) {
          debugPrint(val);
        }),
        const MyTextLinkButtonWidget(),
        Container(
          color: Colors.red,
          child: Text(
              '${MediaQuery.of(context).size.height * 0.4} ${sizeBloc.getWidthByPercent(0.5)}'),
        ),
      ],
    ));
  }
}

class MyCustomButtonWidget extends StatelessWidget {
  const MyCustomButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 60.0,
    );
  }
}

class MyTextLinkButtonWidget extends StatelessWidget {
  const MyTextLinkButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('¿Olvidaste tu contraseña?');
  }
}
