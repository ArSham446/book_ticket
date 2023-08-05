import 'package:flutter/material.dart';

import '../../../utils/app_layout.dart';
import '../../../utils/styles.dart';

class TicketTabs extends StatelessWidget {
  final String text;
  final String text1;
  const TicketTabs({super.key, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    var size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 199, 197, 197),
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
            borderRadius: BorderRadius.circular(
              AppLayout.getHight(50),
            ),
            color: const Color(0xfff4f6fd),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .46,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHight(10)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                      AppLayout.getHight(50),
                    )),
                    color: Colors.white),
                child: Center(child: Text(
                text,
                style: Styles.headLineStyle4.copyWith(color: Colors.black),
              ),),
              ),
              Container(
                width: size.width * .46,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHight(10)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(
                    AppLayout.getHight(50),
                  )),
                ),
                child: Center(child: Text(
                text1,
                style: Styles.headLineStyle4.copyWith(color: Colors.black),
              ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
