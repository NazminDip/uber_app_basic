import 'package:app_uber/pages/register_page.dart';
import 'package:app_uber/pages/success_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  bool isVisible = true;
  final formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    mailcontroller = TextEditingController();
    passcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 191, 11, 223),
          Color.fromARGB(255, 33, 184, 243),
          // Color.fromARGB(255, 65, 33, 243),
          Color.fromRGBO(33, 243, 226, 1),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Get A Safe Ride",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(children: <Widget>[
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Form(
                              key: formkey,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.cyan.shade800))),
                                    child: TextFormField(
                                      controller: mailcontroller,
                                      validator: ((value) {
                                        return mailValidation(value);
                                      }),
                                      decoration: InputDecoration(
                                          suffix: Icon(Icons.mail_outline,
                                              color: Colors.cyan.shade800),
                                          labelText: "Gmail :",
                                          labelStyle: TextStyle(
                                              color: Colors.cyan.shade800,
                                              fontSize: 18),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.cyan.shade800))),
                                    child: TextFormField(
                                          keyboardType: TextInputType.number,
                                      controller: passcontroller,
                                      validator: ((value) {
                                        return passValidation(value);
                                      }),
                                      obscureText: isVisible ? true : false,
                                      decoration: InputDecoration(
                                          suffix: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  isVisible = !isVisible;
                                                });
                                              },
                                              icon: isVisible
                                                  ? Icon(
                                                      Icons
                                                          .visibility_off_outlined,
                                                      color:
                                                          Colors.cyan.shade800)
                                                  : Icon(
                                                      Icons.visibility_outlined,
                                                      color: Colors
                                                          .cyan.shade800)),
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                            color: Colors.cyan.shade800,
                                            fontSize: 18,
                                          ),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Forgot Password?",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18)),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage()));
                                },
                                child: const Text("Register",
                                    style: TextStyle(
                                        color: Colors.cyan, fontSize: 18)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 191, 11, 223),
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  loginButton();
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            "Continue with social media",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.cyan.shade400,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Facebook",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.cyan.shade500,
                                ),
                                child: const Center(
                                  child: Text(
                                    "Google",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                            ],
                          ),
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.cyan.shade900,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.cyan.shade400,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ],
                          )
                        ]),
                      ),
                    )))
          ],
        ),
      ),
    );
  }

/////////////////////////////  Validation
  mailValidation(var value) {
    if (value.isEmpty) {
      return "Enter Your Gmail";
    } else if (!value.contains('@gmail.com')) {
      return "Your Gmail Format Is Incorrect";
    }
    return null;
  }

  passValidation(value) {
    if (value.isEmpty) {
      return "Enter Your Password";
    } else if (value.length <= 7) {
      return "Enter at least 8 Character";
    }
    return null;
  }

  loginButton() {
    final isValid = formkey.currentState!.validate();
    if (!isValid) {
      formkey.currentState!.save();
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Your Gmail or Password Is Incorrect",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor:  Color.fromARGB(255, 65, 33, 243),
      ));
    } else if (isValid) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Your Have Login Successfully",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.purple,
      ));
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SuccessPage()));
    }
  }
}
