import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Controller/login_provider.dart';
import '../Utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visibility = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Utils.background,
      body: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/1.jpeg"),
                  fit: BoxFit.cover)),
          child: Form(
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  height: height,
                  width: width,
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: Container(
                      height: height * 0.5,
                      width: width * 0.8,
                      color: Utils.foreground1.withOpacity(0.5),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily:
                                      GoogleFonts.sedgwickAve().fontFamily),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.06,
                          ),
                          Consumer<LoginController>(
                              builder: (context, controller, child) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        style: GoogleFonts.urbanist(
                                            color: Colors.black, fontSize: 17),
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.mail,
                                            color: Color(0xFF6C6C6A),
                                          ),
                                          fillColor: Colors.white,
                                          filled: true,
                                          hintText: 'Username',
                                          hintStyle: GoogleFonts.urbanist(
                                              color: Colors.grey, fontSize: 17),
                                          border: InputBorder.none,
                                        ),
                                        onChanged: (val) {
                                          _formKey.currentState!.validate();
                                          setState(() {});
                                        },
                                        validator: (value) {
                                          if (value == '') {
                                            return "Please Enter a Username";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                          Consumer<LoginController>(
                              builder: (context, controller, child) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        obscureText: !visibility,
                                        controller: passwordController,
                                        style: GoogleFonts.urbanist(
                                            color: Colors.black, fontSize: 17),
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.password,
                                            color: Color(0xFF6C6C6A),
                                          ),
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              visibility = !visibility;
                                              setState(() {});
                                            },
                                            icon: Icon(
                                              visibility
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: visibility
                                                  ? Colors.grey
                                                  : const Color(0xFF6C6C6A),
                                            ),
                                          ),
                                          fillColor: Colors.white,
                                          filled: true,
                                          hintText: 'Password',
                                          hintStyle: GoogleFonts.urbanist(
                                              color: Colors.grey, fontSize: 17),
                                          border: InputBorder.none,
                                        ),
                                        onChanged: (val) {
                                          _formKey.currentState!.validate();
                                          setState(() {});
                                        },
                                        validator: (value) {
                                          if (value == "") {
                                            return "Please Enter Password";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Consumer<LoginController>(
                              builder: (context, controller, child) {
                            return ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Utils.foreground),
                                    shape: const MaterialStatePropertyAll(
                                        ContinuousRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)))),
                                    fixedSize: MaterialStatePropertyAll(
                                        Size(width * 0.7, height * 0.05))),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    if (emailController.text != "" &&
                                        passwordController.text != "") {
                                      // Utils.showLoadingDialog(context);
                                      await controller.checkLogin(
                                          context,
                                          emailController.text,
                                          passwordController.text);
                                    } else {
                                      Utils.flushBarErrorMessage(
                                          "Fill all fields", context);
                                    }
                                  }
                                },
                                child: Text("Login",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 18, color: Colors.white)));
                          })
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
