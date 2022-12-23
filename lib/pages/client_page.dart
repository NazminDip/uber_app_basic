import 'package:app_uber/widget/model/client.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  final Client client;
    // ignore: prefer_typing_uninitialized_variables
    final onDeleteItem;
  const ClientPage({
    Key? key,
    required this.client,
    this.onDeleteItem,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            // onToDoChanged(todo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Text(client.pay.toString()),
          trailing: Container(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
              ),
              child: IconButton(
                onPressed: () {
                  onDeleteItem(client.id);
                },
                icon: const Icon(Icons.delete, size: 16, color: Colors.white),
              ),
            )),
        );
  }
}
