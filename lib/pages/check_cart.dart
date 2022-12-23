import 'package:app_uber/pages/book_page.dart';
import 'package:app_uber/widget/model/rider.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckCart extends StatefulWidget {
  const CheckCart({Key? key}) : super(key: key);

  @override
  State<CheckCart> createState() => _CheckCartState();
}

class _CheckCartState extends State<CheckCart> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          "Car List",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.cyan,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: IconButton(
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
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 191, 11, 223),
          Color.fromARGB(255, 33, 184, 243),
          Color.fromRGBO(33, 243, 226, 1),
        ])),
        child: ListView.builder(
          itemCount: riders.length,
          // ignore: dead_code
          itemBuilder: (context, index) {
            var info = riders[index];
            return Container(
                padding: const EdgeInsets.all(5),
                child: Container(
                  width: 250,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      leading: Container(
                          width: 70,
                          height: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.network(info.rideimg))),
                      title: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            info.ridename,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan.shade900),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              info.ridefare.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan.shade900),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              'Tk.',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan.shade900),
                            )),
                      ]),
                      subtitle: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            info.ridefare.toString(),
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan.shade900),
                          )),
                      trailing: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        child: Container(
                            width: 50,
                            height: 55,
                            color: Colors.cyan,
                            child: InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text(
                                    "Your Rent Car is Added",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  backgroundColor: Colors.cyan,
                                ));
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
                      )),
                ));
          },
        ),
      ),

      ///////////////////////// FOOTER
    );
  }
}
