import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/styles.dart';
import 'package:flutter/material.dart';


import '../../utils/app_info_list.dart';
import '../home_screen/h_c_widgets/ticket_view.dart';
import '../ticket_screen/ticket_screen.dart';

class AllFlights extends StatelessWidget {
  const AllFlights({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: size.width * 100,
              height: size.height * .13,
              padding: const EdgeInsets.only(top: 40, bottom: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 199, 197, 197),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Flights',
                  style: Styles.headLineStyle1
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              )),
          Container(
            height: AppLayout.getHight(547),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: ticketList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: GestureDetector(
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
                      child: Column(
                        children: [
                          TicketView(
                            ticketList: ticketList[index],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
