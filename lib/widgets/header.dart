import 'package:flutter/material.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Balance',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              '\u20A6 2,908,343.34',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.visibility_outlined),
            SizedBox(
              width: 10,
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(Icons.notifications_none),
                Positioned(
                  top: 4,
                  right: 4,
                  child: Badge(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
