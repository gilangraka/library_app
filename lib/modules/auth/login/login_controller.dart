import 'package:get/get.dart';
import 'package:libromate_app/main.dart';
import 'package:libromate_app/modules/auth/login/login_page.dart';

class LoginController extends GetxController {
  static void login(String username, String password) {
    final String dbUser = 'username123';
    final String dbPass = 'password123';

    if (username == '' || password == '') {
      LoginPage.errorMsg.value = "Username & Password required!!";
    } else {
      if (username == dbUser && password == dbPass) {
        Get.offAll(() => MyApp());
      } else {
        LoginPage.errorMsg.value = "Login Gagal! Username atau Password salah.";
      }
    }
  }
}
