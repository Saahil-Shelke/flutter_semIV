import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  double screenHeight = 0;
  double screenWidth = 0;
  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  TextEditingController nameCon = TextEditingController();
  TextEditingController confirmPassCon = TextEditingController();
  Color primary = const Color(0xffeef444c);

  @override
  Widget build(BuildContext context) {

    final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(context);
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
          children: [
            isKeyboardVisible ? SizedBox() : Container(
      height: screenHeight / 6,
      width: screenWidth,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(70),
        ),
      ),
      child: Center(
        child: Text(
        "WELCOME",
        style: TextStyle(
          fontFamily: "IBMPlexSans-Bold",
          fontSize: screenWidth / 14,
          color: Colors.white,
        ),
      ),
      ),

    ),
    Container(                        //Login
          margin: EdgeInsets.only(
            top: screenHeight / 25,
            bottom: screenHeight / 25,
          ),
          child: Text(
            "Register",
            style: TextStyle(
              fontFamily: "IBMPlexSans-Bold",
              fontSize: screenWidth / 15,
            ),
          ),
    ),
    Container(
    margin: EdgeInsets.symmetric(
    horizontal: screenWidth / 15,
    ),
    alignment: Alignment.centerLeft,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      fieldTitle("Name"),
      customField("Enter your Full Name", nameCon,"email"),
    fieldTitle("Email ID"),
    customField("Enter your email address", emailCon,"email"),
    fieldTitle("Password"),
    customField("Enter your password", passCon,"lock"),
      fieldTitle("Confirm password"),
      customField("Re-enter your password", confirmPassCon,"email"),

    Container(
    height: 60,
    width: screenWidth,
    margin: EdgeInsets.only(top: screenHeight / 40),
    decoration: BoxDecoration(
    color: primary,
    borderRadius: const BorderRadius.all(Radius.circular(30)),
    ),
      child: Center(
        child: Text(
          "SIGN UP",
          style: TextStyle(
            fontFamily: "IBMPlexSens-Bold",
            fontSize: screenWidth / 26,
            color: Colors.white,
            letterSpacing: 1.8,
          ),
        ),
      ),
    )
    ],
    ),
    ),

      ],
    ),
        );
  }

  Widget fieldTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "IBMPlexSans-Regular",
          fontSize: screenWidth / 26,
        ),
      ),
    );
  }


  Widget customField(String hint, TextEditingController controller,String pic) {
    return Container( //InputBox1
      width: screenWidth,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container( //Icon1
            width: screenWidth / 6,
            child: Icon(
              pic == "email"? Icons.email : Icons.lock,
              color: primary,
              size: screenWidth / 15,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 6),
              child: TextFormField(
                controller: controller,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenWidth / 35,
                  ),
                  border: InputBorder.none,
                  hintText: hint,
                ),
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
