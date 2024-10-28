import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libromate_app/helpers/config.dart';
import 'package:libromate_app/modules/auth/login/login_controller.dart';
import 'package:libromate_app/widgets/btn_primary_widget.dart';
import 'package:libromate_app/widgets/input_widget.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  static RxString errorMsg = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: headingTextStyle.copyWith(fontSize: 28),
              ),
              const SizedBox(height: 8),
              Text('Masukkan Akun dengan Username dan Password Terdaftar',
                  style: blackTextStyle.copyWith(fontSize: 16)),
              const SizedBox(height: 20),
              InputWidget(
                controller: usernameController,
                label: 'Username',
              ),
              SizedBox(
                height: 20,
              ),
              InputWidget(
                controller: passwordController,
                label: 'Password',
                obsecure: true,
              ),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => Text(
                  errorMsg.value, // Menggunakan value dari RxString
                  style: TextStyle(color: Colors.red),
                ),
              ),
              const Spacer(),
              Divider(
                thickness: 2, // Ketebalan garis
                color: Colors.grey[200], // Warna garis
              ),
              const SizedBox(height: 12),
              BtnPrimaryWidget(
                label: 'Login',
                onclick: () {
                  LoginController.login(
                      usernameController.text, passwordController.text);
                },
              ),
            ],
          ),
        ));
  }
}
