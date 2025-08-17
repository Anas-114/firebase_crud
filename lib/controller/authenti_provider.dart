import 'package:baseapp/service/auth_service.dart';
import 'package:flutter/widgets.dart';

class AuthentiProvider extends ChangeNotifier {
  AuthService authService = AuthService();

  Future Sighup(String email, String password) async {
    await authService.sighup(email, password);

  }

  Future login(String email, String password) async {
   final user = await authService.login(email, password);
   notifyListeners();
   return user;

  }

  Future Signout() async {
    await authService.sighnout();
    notifyListeners();
  }
}
