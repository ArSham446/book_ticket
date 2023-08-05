import 'package:book_ticket/screens/home_screen/h_c_widgets/ticket_view.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../SearchScreen/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final Map? arguments = Get.arguments;
    final int index = arguments?['index'] ?? 0;
    return Scaffold(
        backgroundColor: Styles.bgcolor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHight(20),
              ),
              children: [
                Gap(AppLayout.getHight(40)),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHight(20),
                  ),
                  child: Text(
                    'Tickets',
                    style: Styles.headLineStyle1,
                  ),
                ),
                Gap(AppLayout.getHight(20)),
                const TicketTabs(text: 'Upcomming', text1: 'Previous'),
                Gap(AppLayout.getHight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                  child: TicketView(
                    ticketList: ticketList[index],
                    isColor: true,
                    radious: true,
                    index: index,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                  child: TicketView(
                    ticketList: ticketList[index],
                    isColor: true,
                    midText: true,
                    text: true,
                    radious: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                  child: TicketView(
                    ticketList: ticketList[index],
                    isColor: true,
                    midText: true,
                    text1: true,
                  ),
                ),
                const Gap(30),
                Container(
                    padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                    child: TicketView(
                      ticketList: ticketList[index],
                      padingticket: true,
                    ))
              ],
            )
          ],
        ));
  }
}
