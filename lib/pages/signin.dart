import 'package:ecom_app/slider/caro.dart';
import 'package:flutter/material.dart';

import '../component/btn.dart';
import '../nav/home.dart';
import '../nav/nav.dart';

class Login extends StatelessWidget {
  static String id = "Login";

  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height / 1.15,
          width: width,
          child: Column(
            children: [
              const Text(
                "Add your details to login",
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Input(
                      obscured: false,
                      keyboardType: TextInputType.emailAddress,
                      hintpext: "Email",
                    ),
                    Input(
                      obscured: true,
                      keyboardType: TextInputType.visiblePassword,
                      hintpext: "Password",
                    ),
                    Buttonn(
                      height: height / 12,
                      width: width / 1.1,
                      text: text * 20,
                      texp: "Login",
                      onPressed: () {
                        Navigator.pushNamed(context, Home.id);
                      },
                    ),
                    const Text(
                      "Forgot your Password ?",
                      style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an Account?"),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(" Signup",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
