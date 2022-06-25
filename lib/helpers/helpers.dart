

class Helpers{

  static bool isValidEmail(String value) {
    const String regexp =
        r"^([a-z][a-z0-9\_\-\.]+[a-z0-9])@([a-z0-9]+)(\.[a-z0-9]{2,})+$";
    return RegExp(regexp).hasMatch(value);
  }


  static String validatePassword(String password) {
    String passwordOk = '';
    int length = 5;
    if (password.length < length) {
      passwordOk = 'Usa una contraseña de por lo menos $length caracteres';
    }
    return passwordOk;
  }
}