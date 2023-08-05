import 'package:book_ticket/screens/SearchScreen/widgets/offer.dart';
import 'package:book_ticket/screens/SearchScreen/widgets/ticket_tabs.dart';
import 'package:book_ticket/screens/home_screen/h_c_widgets/search_bar.dart';

import 'package:book_ticket/screens/home_screen/h_c_widgets/thirdheading.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHight(30)),
        children: [
          Gap(AppLayout.getHight(40)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Text('What are \nyou looking for',
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getHight(35))),
          ),
          Gap(AppLayout.getHight(20)),
          const TicketTabs(text: 'Airline tickets', text1: 'Hotels'),
          const Gap(20),
          searchBar(
              text: Text(
                "Departure",
                style: Styles.headLineStyle4.copyWith(color: Colors.black),
              ),
              icon: const Icon(Icons.flight_takeoff)),
          const Gap(20),
          searchBar(
              text: Text(
                "Arrival",
                style: Styles.headLineStyle4.copyWith(color: Colors.black),
              ),
              icon: const Icon(Icons.flight_land)),
          const Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHight(18),
                vertical: AppLayout.getWidth(18),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getWidth(10),
                  ),
                  color: const Color(0xd91130ce),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 199, 197, 197),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ]),
              child: Center(
                child: Text(
                  "Find tickets",
                  style: Styles.textStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Gap(
            AppLayout.getHight(30),
          ),
          ThirdHeading(
              text: Text(
            'Upcomming flights',
            style: Styles.headLineStyle2,
          )),
          Gap(
            AppLayout.getHight(15),
          ),
          const OfferRow()
        ],
      ),
    );
  }
}
