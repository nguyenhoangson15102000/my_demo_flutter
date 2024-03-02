import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  // define color
  final Color mainColor = Color(0xFF034C81);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/backgroundEZ.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/img/EZDentist.png",
                          width: 150,
                          height: 150,
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 30,
                            child: Image.asset(
                              "assets/img/EZDentistText.png",
                              fit: BoxFit.contain,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        _buildInputField(
                            label: "Username",
                            imagePath: "assets/img/user.png",
                            obscureText: false,
                            isSuffixIcon: false),
                        SizedBox(height: 20),
                        _buildInputField(
                            label: "Password",
                            imagePath: "assets/img/password.png",
                            obscureText: true,
                            isSuffixIcon: true),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  color: mainColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Implement login action
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(mainColor),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)))),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 4 / 5,
                            height: 65,
                            alignment: Alignment.center,
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    // required IconData icon,
    required String imagePath,
    bool obscureText = false,
    bool isSuffixIcon = false,
  }) {
    return TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: label,
          isDense: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              width: 10, // Adjust the width of the prefix icon
              height: 10, // Adjust the height of the prefix icon
              child: Image(
                image: AssetImage(imagePath),
// Adjust the height of the image
              ),
            ),
          ),
          suffixIcon: isSuffixIcon
              ? Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SizedBox(
                    width: 10, // Adjust the width of the suffix icon
                    height: 10, // Adjust the height of the suffix icon
                    child: Image(
                      image: AssetImage("assets/img/eyes.png"),
                    ),
                  ),
                )
              : null,
        ));
  }
}
