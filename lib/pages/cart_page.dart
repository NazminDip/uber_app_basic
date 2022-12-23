import 'package:app_uber/pages/book_page.dart';
import 'package:app_uber/pages/success_page.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _count = 250;
  void increase() {
    setState(() {
      _count++;
    });
  }

  void decrease() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text("Cart Item",
              style: TextStyle(color: Colors.white, fontSize: 30)),
          leading: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                  tooltip: "Logout",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookPage()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 35,
                    color: Colors.cyan.shade800,
                  )),
            ),
          )),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color.fromARGB(255, 191, 11, 223),
            Color.fromARGB(255, 33, 184, 243),
            // Color.fromARGB(255, 65, 33, 243),
            Color.fromRGBO(33, 243, 226, 1),
          ])),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.cyan),
                      shape: BoxShape.circle),
                  child: IconButton(
                    icon: const Icon(Icons.car_rental,
                        color: Colors.white, size: 50),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SuccessPage()));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Container(
                    width: 250,
                    height: 50,
                    color: Colors.white,
                  

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "$_count",
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.cyan, width: 3),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              onTap: increase,
                              child: Icon(
                                Icons.add,
                                color: Colors.cyan.shade800,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.cyan, width: 3),
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              onTap: decrease,
                              child: Icon(
                                Icons.minimize_rounded,
                                color: Colors.cyan.shade900,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 5),
                          child: Container(
                              width: 65,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.cyan,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CartPage()));
                                },
                                child: const Center(
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    )),
              ),

              /////////////////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
