import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset("assets/logo/logo-login.png"),
          const Text("Silahkan masuk dengan nomor telkomsel kamu"),
          const Text("Nomor HP"),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Cth. 08129011xxxx"),
          ),
          CheckboxListTile(
            value: false,
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
            title: RichText(
              text: const TextSpan(
                text: "Saya menyetujui ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "syarat",
                    style: TextStyle(color: Colors.red),
                    children: [
                      TextSpan(
                        text: ",",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: " ketentuan",
                            style: TextStyle(color: Colors.red),
                            children: [
                              TextSpan(
                                text: ", dan ",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "privasi ",
                                    style: TextStyle(color: Colors.red),
                                    children: [
                                      TextSpan(
                                        text: "Telkomsel",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
