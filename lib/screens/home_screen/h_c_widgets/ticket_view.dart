import 'package:book_ticket/screens/home_screen/h_c_widgets/thick_container.dart';

import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';


class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketList;
  final bool? isColor;
  final bool? midText;
  final bool? text;
  final bool? radious;
  final bool? text1;
  final bool? padingticket;
  final bool? flighScreen;
  final int? index;

  const TicketView(
      {super.key,
      required this.ticketList,
      this.isColor,
      this.midText,
      this.text,
      this.radious,
      this.text1,
      this.padingticket,
      this.flighScreen,
      this.index});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: flighScreen == null ? size.width * 0.85 : size.width,
      child: Container(
        padding: isColor == true || padingticket == true
            ? const EdgeInsets.symmetric(horizontal: 15)
            : const EdgeInsets.symmetric(horizontal: 0),
        margin: EdgeInsets.only(right: AppLayout.getHight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: text == null && text1 == null
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21),
                      )
                    : BorderRadius.circular(0),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      text1 == true
                          ? Image.asset(
                              'assets/images/visa.png',
                              scale: 11,
                            )
                          : const Gap(0),
                      Text(
                        text == null && text1 == null
                            ? ticketList['from']['code']
                            : text1 == null
                                ? 'Flutter DB'
                                : '*** 2462',
                        style: Styles.headLineStyle3.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                      Expanded(child: Container()),
                      midText == null
                          ? ThickContainer(
                              isColor: isColor == true ? true : null,
                            )
                          : const Gap(0),
                      Expanded(
                        child: midText == null
                            ? Stack(children: [
                                SizedBox(
                                  height: AppLayout.getHight(24),
                                  child: LayoutBuilder(
                                    builder: (BuildContext context,
                                        BoxConstraints constraints) {
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            (constraints.constrainWidth() / 6)
                                                .floor(),
                                            (index) => Text(
                                                  '-',
                                                  style: TextStyle(
                                                      color: isColor == null
                                                          ? Colors.white
                                                          : const Color(
                                                              0xff9accf7)),
                                                )),
                                      );
                                    },
                                  ),
                                ),
                                Transform.rotate(
                                  angle: 1.6,
                                  child: Center(
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: isColor == null
                                          ? Colors.white
                                          : const Color(0xff9accf7),
                                    ),
                                  ),
                                ),
                              ])
                            : const Gap(0),
                      ),
                      midText == null
                          ? ThickContainer(
                              isColor: isColor == true ? true : null,
                            )
                          : const Gap(0),
                      Expanded(child: Container()),
                      Text(
                        text == null && text1 == null
                            ? "${ticketList['to']['code']}"
                            : text1 == null
                                ? '5121 276566'
                                : '\$999.99',
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          text == null && text1 == null
                              ? ticketList['from']['name']
                              : text1 == null
                                  ? 'Passenger'
                                  : 'Payment Using',
                          textAlign: TextAlign.start,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      midText == null
                          ? Text(
                              ticketList['flying_time'],
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4
                                      .copyWith(color: Colors.black),
                            )
                          : const Text(''),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          text == null && text1 == null
                              ? ticketList['to']['name']
                              : text1 == null
                                  ? 'Passport'
                                  : "Price",
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: AppLayout.getHight(25),
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHight(25),
                    width: AppLayout.getWidth(15),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color:
                              isColor == null ? Styles.bgcolor : Colors.white),
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 11).floor(),
                            (index) => Text(
                              '-',
                              style: TextStyle(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.grey.shade500),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHight(25),
                    width: AppLayout.getWidth(15),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                          color:
                              isColor == null ? Styles.bgcolor : Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: radious == null
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHight(21)),
                        bottomRight: Radius.circular(AppLayout.getHight(21)),
                      )
                    : BorderRadius.circular(0),
              ),
              padding: EdgeInsets.all(AppLayout.getHight(16)),
              child: text1 == null
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  text == null
                                      ? ticketList['date']
                                      : '0055 444 77147',
                                  style: isColor == null
                                      ? Styles.headLineStyle3
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle3
                                          .copyWith(color: Colors.black),
                                ),
                                Text(
                                  text == null ? 'Date' : 'No of E-Tickets',
                                  style: isColor == null
                                      ? Styles.headLineStyle4
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle4,
                                )
                              ],
                            ),
                            midText == null
                                ? Column(
                                    children: [
                                      Text(
                                        ticketList['departure_time'],
                                        style: isColor == null
                                            ? Styles.headLineStyle3
                                                .copyWith(color: Colors.white)
                                            : Styles.headLineStyle4
                                                .copyWith(color: Colors.black),
                                      ),
                                      Text(
                                        'Departure time',
                                        style: isColor == null
                                            ? Styles.headLineStyle4
                                                .copyWith(color: Colors.white)
                                            : Styles.headLineStyle4,
                                      )
                                    ],
                                  )
                                : const Gap(0),
                            Column(
                              children: [
                                Text(
                                  text == null
                                      ? ticketList['number'].toString()
                                      : 'B2SG28',
                                  style: isColor == null
                                      ? Styles.headLineStyle3
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle3
                                          .copyWith(color: Colors.black),
                                ),
                                Text(
                                  text == null ? 'Number' : 'Booking Code',
                                  style: isColor == null
                                      ? Styles.headLineStyle4
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle4,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  : BarcodeWidget(
                      data: 'http/google.com',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 60,
                      barcode: Barcode.code128()),
            ),
          ],
        ),
      ),
    );
  }
}
