import 'package:flutter/material.dart';

import 'widgets/card_widget.dart';
import 'widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              const HeaderRow(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bank cards",
                    style: TextStyle(fontSize: 13),
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 9,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CardWidget(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction history",
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    children: [
                      Text(
                        "View All",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      ),
                    ],
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey[400],
                  child: const Text("O"),
                ),
                title: const Text(
                  "Oluwadamilare Akin",
                  style: TextStyle(fontSize: 12),
                ),
                subtitle: const Text(
                  "28 August 2021",
                  style: TextStyle(fontSize: 10),
                ),
                trailing: const Text(
                  "\u20A6 52,908",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
