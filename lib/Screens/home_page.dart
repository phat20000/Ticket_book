
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/Screens/hotels_view.dart';
import 'package:ticket_booking/Screens/search_view.dart';
import 'package:ticket_booking/Screens/Tickets/ticket_view.dart';
import 'package:ticket_booking/utils/info_list.dart';
import 'package:ticket_booking/utils/style.dart';
import 'package:ticket_booking/widget/doube_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  [
                         Text("Good Morning", style: Style.headLineStyle3,),
                         const Gap(5),
                         Text("Book Tickets", style: Style.headLineStyle1, ),
                       ],
                     ),
                     Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         image: const DecorationImage(
                           image: AssetImage("assets/images/img_1.png"),
                         )
                       ),
                     ),
                  ],
                ),
                const Gap(25),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                        const Gap(20),
                        Text("Search", style: Style.headLineStyle4,),
                      ],
                    ),
                  ),
                ),
                const Gap(40),
               const DoubleTextWidget(bigText: "Upcoming Flight", smallText: "View all"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList()
          ),
          ),
          const Gap(5),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: const DoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          const Gap(10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: hotelList.map((SingleHotel) => HotelScreen(hotel: SingleHotel)).toList()
            ),
          ),
        ],
      ),
    );
  }
}
