import 'package:app_uber/pages/book_page.dart';
import 'package:app_uber/widget/model/rider.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

// ignore: must_be_immutable
class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Select Your Transport"),
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, bottom: 5),
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: IconButton(
                tooltip: "Logout",
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.cyan,
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
            // Color.fromARGB(255, 65, 33, 243),
            Color.fromRGBO(33, 243, 226, 1),
          ])),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: riders.length,
            itemBuilder: (context, index) {
              final ride = riders[index];
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.cyan,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: GridTile(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.cyan,
                                    width: 5,
                                  ),
                                  shape: BoxShape.circle),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BookPage()));
                                },
                                child: Image(
                                  width: 2,
                                  height: 1,
                                  // fit: BoxFit.cover,
                                  image: NetworkImage(ride.rideimg),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            ride.ridename,
                            style: TextStyle(
                                color: Colors.cyan.shade800,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            ride.ridefare.toString(),
                            style: TextStyle(
                                color: Colors.cyan.shade800,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'tk. (Inside Dhaka)',
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))));
            },
          )),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(color: Colors.cyan, height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: const Icon(
          Icons.home,
          color: Colors.cyan,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
