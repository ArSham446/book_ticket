import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class ThirdHeading extends StatelessWidget {
  final Widget text;
  const ThirdHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text,
          InkWell(
            onTap: () {},
            child: Text(
              'View All',
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
