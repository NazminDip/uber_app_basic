class Client {
  String? id;
  String? ph;
  String? des;
  String? pay;
  String? loc;
  Client({
    required this.id,
    required this.ph,
    required this.des,
    required this.pay,
    required this.loc,
  });
  List<Client> clienstList= [

 Client(id: '01', ph: '012345678911', des: '30A, Cresent House, Dhaka', pay: '1000', loc: '40/1, Elephant Road'),
 Client(id: '02', ph: '012345678911', des: '30A, Cresent House, Dhaka', pay: '1000', loc: '40/1, Elephant Road'),
 Client(id: '03', ph: '012345678911', des: '30A, Cresent House, Dhaka', pay: '1000', loc: '40/1, Elephant Road'),
 Client(id: '04', ph: '012345678911', des: '30A, Cresent House, Dhaka', pay: '1000', loc: '40/1, Elephant Road'),

  ];

  static clientsList() {}
}
