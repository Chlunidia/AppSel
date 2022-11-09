// ignore_for_file: sort_child_properties_last

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
          SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Saya menyetujui ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik syarat");
                          },
                        text: "syarat",
                        style: const TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: ",",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik ketentuan");
                          },
                        text: " ketentuan",
                        style: const TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: ", dan ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("klik ketentuan");
                          },
                        text: "privasi",
                        style: const TextStyle(color: Colors.red),
                      ),
                      const TextSpan(
                        text: " Telkomsel",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "MASUK",
              style: TextStyle(color: Color(0xFF747D8C)),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[300],
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text("Atau masuk menggunakan"),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/fb.png"),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Facebook",
                      style: TextStyle(
                        color: Color(0xFF3B599B),
                      ),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    const Size(150, 50),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: Color(0xFF3B5998),
                    ),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/twitter.png"),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Twitter",
                      style: TextStyle(
                        color: Color(0xFF747DBC),
                      ),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(150, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: Color(0xFF3B5998),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
