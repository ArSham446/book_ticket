import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/styles.dart';

class Title1 extends StatelessWidget {
  const Title1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning',
                style: Styles.headLineStyle3,
              ),
              const Gap(5),
              Text(
                'Book Tickets',
                style: Styles.headLineStyle1,
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/img_1.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
