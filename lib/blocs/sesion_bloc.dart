import 'dart:async';

import '../entities/bloc_entity.dart';
import '../models/user_model.dart';

class SesionBloc extends Bloc {
  UserModel? myUser;
  final StreamController<UserModel?> _myUserController =
      StreamController<UserModel?>.broadcast();

  @override
  void dispose() {
    _myUserController.close();
  }
}
