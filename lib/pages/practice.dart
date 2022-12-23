// import 'package:app_uber/pages/client_page.dart';
// import 'package:app_uber/pages/success_page.dart';
// import 'package:app_uber/widget/model/client.dart';
// import 'package:flutter/material.dart';

// import 'check_cart.dart';

// // ignore: must_be_immutable
// class BookPage extends StatefulWidget {
//   const BookPage({Key? key}) : super(key: key);

//   @override
//   State<BookPage> createState() => _BookPageState();
// }

// class _BookPageState extends State<BookPage> {
//   final clientList = Client.clientsList();
//   final formkey = GlobalKey<FormState>();
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController pickController = TextEditingController();

//   var oncheck1 = true;
//   var oncheck2 = true;
  
//   @override
//   void initState() {
//     super.initState();
//     phoneController = TextEditingController();
//     pickController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: buildBar(),
//         body: SingleChildScrollView(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Padding(
//               padding: const EdgeInsets.only(bottom: 8.0),
//               child: Image.asset("images/map.jpg"),
//             ),
//             Container(
//               padding: const EdgeInsets.all(15),
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                   // borderRadius: BorderRadius.all(Radius.circular(30)),
//                   gradient: LinearGradient(begin: Alignment.topCenter, colors: [
//                 Color.fromARGB(255, 191, 11, 223),
//                 Color.fromARGB(255, 33, 184, 243),
//                 Color.fromRGBO(33, 243, 226, 1),
//               ])),
//               child: Form(
//                 key: formkey,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(
//                         width: 15,
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(top: 2, left: 20, right: 20),
//                         child: TextFormField(
//                           keyboardType: TextInputType.number,
//                           controller: phoneController,
//                           validator: ((value) {
//                             return passValidation(value);
//                           }),
//                           decoration: InputDecoration(
//                               suffix: Icon(Icons.phone,
//                                   color: Colors.cyan.shade800),
//                               labelText: "Phone Number",
//                               labelStyle: const TextStyle(
//                                   color: Colors.white, fontSize: 22)),
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(top: 2, left: 20, right: 20),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                               suffix: Icon(Icons.location_city_outlined,
//                                   color: Colors.cyan.shade800),
//                               labelText: " Your Destination",
//                               labelStyle: const TextStyle(
//                                   color: Colors.white, fontSize: 22)),
//                         ),
//                       ),
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(top: 2, left: 20, right: 20),
//                         child: TextFormField(
//                           controller: pickController,
//                           validator: ((value) {
//                             return mailValidation(value);
//                           }),
//                           decoration: InputDecoration(
//                               suffix: Icon(Icons.location_city,
//                                   color: Colors.cyan.shade800),
//                               labelText: "Pickup Location",
//                               labelStyle: const TextStyle(
//                                   color: Colors.white, fontSize: 22)),
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(top: 2, left: 20, right: 20),
//                         child: Text("Choose Payment Method ",
//                             style:
//                                 TextStyle(color: Colors.white, fontSize: 22)),
//                       ),
//                       const SizedBox(height: 30),
//                       Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   oncheck1 = !oncheck1;
//                                 });
//                               },
//                               icon: Icon(
//                                 oncheck1
//                                     ? Icons.check_box
//                                     : Icons.check_box_outline_blank,
//                                 color: Colors.cyan.shade800,
//                                 size: 35,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(5),
//                               child: Text(
//                                 'Cash',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 22,
//                                     decoration: oncheck1
//                                         ? TextDecoration.overline
//                                         : null),
//                               ),
//                             ),
//                             IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   oncheck2 = !oncheck2;
//                                 });
//                               },
//                               icon: Icon(
//                                 oncheck2
//                                     ? Icons.check_box
//                                     : Icons.check_box_outline_blank,
//                                 color: Colors.cyan.shade800,
//                                 size: 35,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(5),
//                               child: Text(
//                                 'Bkash',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 22,
//                                     decoration: oncheck2
//                                         ? TextDecoration.overline
//                                         : null),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(15),
//                               child: FloatingActionButton.extended(
//                                   backgroundColor: Colors.cyan,
//                                   onPressed: () {
//                                     _Addclients(phoneController.text);
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                         ClientPage(client: phoneController.text.toString())));
//                                   },
//                                   icon: const Icon(
//                                     Icons.shopping_cart,
//                                     size: 25,
//                                     color: Colors.white,
//                                   ),
//                                   label: const Text(
//                                     "Add To Cart",
//                                     style: TextStyle(fontSize: 18),
//                                   )),
//                             ),
//                           ]),
//                       const SizedBox(height: 10),
//                       Container(
//                         height: 50,
//                         margin: const EdgeInsets.symmetric(horizontal: 20),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(80),
//                           color: const Color.fromARGB(255, 65, 33, 243),
//                         ),
//                         child: Center(
//                           child: InkWell(
//                             onTap: () {
//                               bookingButton();
//                             },
//                             child: const Text(
//                               "Confirm Booking",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 100),
//                     ]),
//               ),
//             ),
//           ]),
//         ));
//   }

// ///////////////////////////////////////////// SEARCH
//   AppBar buildBar() {
//     return AppBar(
//       backgroundColor: Colors.cyan,
//       elevation: 0,
//       leading: Padding(
//         padding: const EdgeInsets.all(5),
//         child: Container(
//           width: 40,
//           height: 40,
//           decoration:
//               const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
//           child: IconButton(
//             icon: Icon(Icons.arrow_back, color: Colors.cyan.shade800, size: 35),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const SuccessPage()));
//             },
//           ),
//         ),
//       ),
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             width: 320,
//             height: 50,
//             decoration: BoxDecoration(
//                 border: Border.all(color: Colors.cyan.shade800, width: 3),
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30)),
//             child: TextField(
//                 decoration: InputDecoration(
//               contentPadding:
//                   const EdgeInsets.only(top: 10, bottom: 12, right: 5),
//               border: InputBorder.none,
//               prefixIcon: Padding(
//                 padding: const EdgeInsets.only(right: 15),
//                 child: Icon(
//                   Icons.search,
//                   size: 35,
//                   color: Colors.cyan.shade800,
//                 ),
//               ),
//               // prefixIconConstraints:
//               //     BoxConstraints(maxHeight: 30, maxWidth: 20),
//               hintText: 'Search Your Location',
//               hintStyle: TextStyle(color: Colors.cyan.shade800, fontSize: 18),
//             )),
//           ),
//           IconButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => const CheckCart()));
//               },
//               icon: const Icon(Icons.shopping_cart_checkout,
//                   size: 35, color: Colors.white)),
//         ],
//       ),
//     );
//   }

//   ////////////////////////////////////////////////  BOOKING BUTTOn
//   bookingButton() {
//     final isValid = formkey.currentState!.validate();
//     if (!isValid) {
//       formkey.currentState!.save();
//       return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text(
//           "Enter Required Information",
//           style: TextStyle(color: Colors.white, fontSize: 20),
//         ),
//         backgroundColor: Color.fromARGB(255, 65, 33, 243),
//       ));
//     } else if (isValid) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text(
//           "You Booking Is Success",
//           style: TextStyle(color: Colors.white, fontSize: 20),
//         ),
//         backgroundColor: Colors.purple,
//       ));
//       return Navigator.push(
//           context, MaterialPageRoute(builder: (context) => const BookPage()));
//     }
//   }

// ////////////////////////  Validation
//   mailValidation(var value) {
//     if (value.isEmpty) {
//       return "Enter Your Pickup Address";
//     }
//     return null;
//   }

//   passValidation(value) {
//     if (value.isEmpty) {
//       return "Enter Your Phone Number";
//     } else if (value.length <= 11) {
//       return "Enter  Phone Number Must be 11 Number";
//     }
//     return null;
//   }

//   ///////////////////////// Add Item
//   //////////////////////////////////     ADD ITEM
//   // ignore: non_constant_identifier_names
//   void _Addclients(String client) {
//     setState(() {
//       clientList.add(Client(
//         id: DateTime.now().microsecondsSinceEpoch.toString(),
//         ph: client,
//         des: client,
//         pay: client,
//         loc: client,
//       ));
//     });
//     phoneController.clear();
//   }
// }
