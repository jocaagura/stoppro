import 'dart:async';

import '../entities/bloc_entity.dart';
import '../models/user_model.dart';

class SesionBloc extends Bloc {
  UserModel? _myUser;
  final StreamController<UserModel?> _myUserController =
      StreamController<UserModel?>.broadcast();

  SesionBloc(){
    // _myUser = UserModel(email: 'anonimo@anonimo.com.co', password: 'miPasswordSeguro');
  }

  bool get isLogged{
    return !(_myUser == null);
  }

  @override
  void dispose() {
    _myUserController.close();
  }
}


final sesionBloc = SesionBloc();