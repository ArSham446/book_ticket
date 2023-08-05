import 'package:book_ticket/screens/home_screen/h_c_widgets/thirdheading.dart';
import 'package:book_ticket/screens/home_screen/h_c_widgets/hotel_view.dart';
import 'package:book_ticket/screens/home_screen/h_c_widgets/ticket_view.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../ticket_screen/ticket_screen.dart';
import 'h_c_widgets/search_bar.dart';
import 'h_c_widgets/title.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const Gap(40),
                const Title1(),
                const Gap(25),
                searchBar(
                  text: Text(
                    'Search',
                    style: Styles.headLineStyle4,
                  ),
                  icon: const Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Color(0xffbfc205),
                  ),
                ),
                const Gap(40),
                ThirdHeading(
                  text: Text(
                    'Upcoming Flights',
                    style: Styles.headLineStyle2,
                  ),
                ),
                const Gap(15),
               Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ticketList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TicketScreen(),
                              settings: RouteSettings(
                                arguments: {'index': index},
                              ),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            TicketView(
                              ticketList: ticketList[index],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Gap(10),
                ThirdHeading(
                  text: Text(
                    'Hotels',
                    style: Styles.headLineStyle2,
                  ),
                ),
                const Gap(15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children:
                        hotelList.map((e) => HotelView(hotel: e)).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
