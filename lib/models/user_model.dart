import '../entities/model_entity.dart';

class UserModel extends Model {
  String displayName, email, photoUrl, password;

  UserModel({
    required this.email,
    this.displayName = 'Juan',
    this.photoUrl = '',
    this.password = 'nopassword',
  });

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> tmp = super.toJson();
    tmp['displayName'] = displayName;
    tmp['email'] = email;
    tmp['photoUrl'] = photoUrl;
    return tmp;
  }
}
