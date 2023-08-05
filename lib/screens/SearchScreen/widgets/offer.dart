import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OfferRow extends StatelessWidget {
  const OfferRow({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: AppLayout.getHight(400),
            width: size.width * .42,
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHight(12),
                vertical: AppLayout.getWidth(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getHight(20),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 199, 197, 197),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: AppLayout.getHight(190),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHight(12),
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/sit.jpg'),
                    ),
                  ),
                ),
                Gap(AppLayout.getHight(12)),
                Text(
                  '20% discount on the early booking of this flight.Dont\'t miss.',
                  style: Styles.headLineStyle3.copyWith(fontSize: 20),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHight(15),
                      vertical: AppLayout.getWidth(15),
                    ),
                    height: AppLayout.getHight(174),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 199, 197, 197),
                          blurRadius: 8,
                          spreadRadius: 2,
                        ),
                      ],
                      color: const Color(0xff3abbbb),
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHight(18),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discount\n for servey',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 235, 235, 235)),
                        ),
                        Gap(AppLayout.getHight(10)),
                        Text(
                          'Take servey about over services and get discount',
                          style: Styles.headLineStyle4.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color.fromARGB(255, 235, 235, 235)),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -45,
                    top: -44,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHight(30)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xff189999)),
                        color: Colors.transparent,
                      ),
                    ),
                  )
                ],
              ),
              Gap(AppLayout.getHight(12)),
              Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHight(15),
                    vertical: AppLayout.getWidth(15)),
                height: AppLayout.getHight(210),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 199, 197, 197),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHight(18),
                  ),
                  color: const Color(0xffec6545),
                ),
                child: Column(
                  children: [
                    Text(
                      'Take Love',
                      style: Styles.headLineStyle2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(AppLayout.getHight(5)),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 27),
                          ),
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 37),
                          ),
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 27),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
