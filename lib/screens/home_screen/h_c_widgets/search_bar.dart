import 'package:book_ticket/utils/app_layout.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class searchBar extends StatelessWidget {
  final Widget text;
  final Icon icon;

  const searchBar({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 199, 197, 197),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfff4f6fd),
            ),
            child: Row(
              children: [
                icon,
                const Gap(10),
                text,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
