import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String name;
  final String date;
  final String amount;

  const TransactionTile({
    required this.name,
    required this.date,
    required this.amount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: const Color.fromARGB(255, 228, 228, 228),
        child: Text(name[0]),
      ),
      title: Text(
        name,
        style: const TextStyle(fontSize: 14),
      ),
      subtitle: Text(
        date,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
      trailing: Text(
        "\u20A6$amount",
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
