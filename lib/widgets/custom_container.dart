import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String title, description;
  final Icon icon;
  final Color color, iconColor;

  const CustomContainer({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        
      ),
    );
  }
}