import 'package:flutter/material.dart';
import 'package:singh/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item? item;

  const ItemWidget({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    print("item ===>${item?.image}");
    return Card(
      child: ListTile(
        onTap: () {
          print("${item?.name ?? ""}pressed");
        },
        leading: Image.network(item?.image ?? ""),
        title: Text(item?.name ?? ""),
        subtitle: SafeArea(child: Text(item?.desc ?? "")),
        trailing: Text(
          "\$${item?.price ?? ""}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
