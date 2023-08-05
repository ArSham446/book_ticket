import 'package:book_ticket/screens/SearchScreen/search_screen.dart';
import 'package:book_ticket/screens/home_screen/home_screen.dart';
import 'package:book_ticket/screens/ticket_screen/ticket_screen.dart';
import 'package:get/get.dart';

class RoutsClass {
  static String home = '/';
  static String search = '/search';
  static String ticket = '/tickets';
  static String profile = '/profile';
  static String getHomeRout() => home;
  static String getSearchRout() => home;
  static String getTicketsRout() => home;
  static String getProfilesRout() => home;

  static List<GetPage> routs = [
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: search, page: () => const SearchScreen()),
    GetPage(name: ticket, page: () => const TicketScreen()),
  ];
}
