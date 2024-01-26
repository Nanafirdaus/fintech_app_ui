import 'package:fintech_app_ui/utils/extension.dart';
import 'package:fintech_app_ui/widgets/services.dart';
import 'package:fintech_app_ui/widgets/trans_tile.dart';
import 'package:flutter/material.dart';

import 'widgets/card_widget.dart';
import 'widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: ListView(
            children: [
              SizedBox(
                height: context.screenHeight * .05,
              ),
              const HeaderRow(),
              SizedBox(
                height: context.screenHeight * .05,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bank cards",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "See All >",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: context.screenHeight * .03),
              const CardWidget(),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: context.screenHeight * .18,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Services(
                      title: "Top up",
                      description: "Add moneyto wallet",
                      icon: Icon(
                        Icons.wallet_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      color: Color.fromARGB(255, 231, 246, 244),
                      iconBgColor: Colors.green,
                    ),
                    SizedBox(
                      width: context.screenWidth * .02,
                    ),
                    const Services(
                      title: "Transfer",
                      description: "Quickly transfer cash",
                      icon: Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                        size: 20,
                      ),
                      color: Color.fromARGB(255, 229, 241, 252),
                      iconBgColor: Colors.blue,
                    ),
                    SizedBox(
                      width: context.screenWidth * .02,
                    ),
                    const Services(
                      title: "Receive",
                      description: "Quickly receive cash",
                      icon: Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                        size: 20,
                      ),
                      color: Color.fromARGB(255, 254, 245, 227),
                      iconBgColor: Colors.amber,
                    ),
                    SizedBox(
                      width: context.screenWidth * .02,
                    ),
                    const Services(
                      title: "Airtime",
                      description: "Recharge mobile line",
                      icon: Icon(
                        Icons.sim_card,
                        color: Colors.white,
                        size: 20,
                      ),
                      color: Color.fromARGB(255, 255, 223, 224),
                      iconBgColor: Colors.red,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.screenHeight * .04,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction history",
                      style: TextStyle(fontSize: 15),
                    ),
                    Row(
                      children: [
                        Text(
                          "View All >",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 28, 58, 107),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const TransactionTile(
                  name: "Oluwadamilare Akin",
                  date: "28 August 2021",
                  amount: "190,800"),
              const TransactionTile(
                  name: "Emmaanuel Raymond",
                  date: "12 June 2021",
                  amount: "320,000"),
              const TransactionTile(
                  name: "John Doe Amin",
                  date: "8 July 2021",
                  amount: "100,000"),
              const TransactionTile(
                  name: "Emma Samuel",
                  date: "8 November 2021",
                  amount: "240,000"),
              const TransactionTile(
                  name: "Kelvin Hart", date: "11 May 2021", amount: "900,000"),
            ],
          ),
        ),
      ),
    );
  }
}
