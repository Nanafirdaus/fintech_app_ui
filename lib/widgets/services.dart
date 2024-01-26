import 'package:fintech_app_ui/utils/extension.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  final String title;
  final String description;
  final Icon icon;
  final Color color, iconBgColor;
  const Services({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.iconBgColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(right: 15),
      width: context.screenWidth * .40,
      height: context.screenHeight * .15,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: iconBgColor,
              child: icon,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 10.5, color: Colors.grey[500]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
