import 'package:flutter/material.dart';

import 'home_Page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 65, 33, 243),
          Color.fromRGBO(33, 243, 226, 1),
        ])),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90, right: 310),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back,
                          color: Colors.cyan.shade900, size: 30),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffix: Icon(Icons.person, color: Colors.cyan.shade800),
                        labelText: "Enter Your Full Name",
                        labelStyle:
                            const TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffix: Icon(Icons.phone, color: Colors.cyan.shade800),
                        labelText: "Enter Phone Number",
                        labelStyle:
                            const TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    controller: mailcontroller,
                    validator: ((value) {
                      return mailValidation(value);
                    }),
                    decoration: InputDecoration(
                        suffix: Icon(Icons.mail, color: Colors.cyan.shade800),
                        labelText: "Gmail:",
                        labelStyle:
                            const TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: passcontroller,
                    validator: ((value) {
                      return passValidation(value);
                    }),
                    obscureText: isVisible ? true : false,
                    decoration: InputDecoration(
                        suffix: IconButton(
                          icon: isVisible
                              ? Icon(Icons.lock, color: Colors.cyan.shade800)
                              : Icon(Icons.lock_open,
                                  color: Colors.cyan.shade800),
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                        ),
                        labelText: "Password",
                        labelStyle:
                            const TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 65, 33, 243),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        regisButton();
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    const SizedBox(height: 100),
                  ],
                )
              ],
            ),
          ),
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

  regisButton() {
    final isValid = formkey.currentState!.validate();
    if (!isValid) {
      formkey.currentState!.save();
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Your Gmail or Password Is Incorrect",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Color.fromARGB(255, 65, 33, 243),
      ));
    } else if (isValid) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Your  Register Is Success.Login Now",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.purple,
      ));
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }
}
