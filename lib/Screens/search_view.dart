

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/layout.dart';
import 'package:ticket_booking/widget/icon_text.dart';

import '../utils/style.dart';
import '../widget/doube_text.dart';
import '../widget/ticket_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",
            style: Style.headLineStyle1.copyWith(fontSize:AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          const TicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
       Container(
          padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(17),),
          decoration: BoxDecoration(
          color: const Color(0xD91130CE),
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
          ),
          child: Center(
            child:Text(
              "Find tickets", style: Style.textStyle.copyWith(color: Colors.white)
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const DoubleTextWidget(bigText: "Upcoming Flight", smallText: "View all"),
          Gap(AppLayout.getHeight(25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(9)),
                    Text("20% discount on the early booking of this flight. Don't miss out this chance",
                    style: Style.headLineStyle2
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12),vertical: AppLayout.getHeight(12)),
                        height: AppLayout.getHeight(190),
                        width: size.width*.44,
                        decoration: BoxDecoration(
                            color:const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",
                              style: Style.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                            Gap(AppLayout.getHeight(9)),
                            Text("Take the survey our services and get a discount",
                              style: Style.headLineStyle2.copyWith(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: AppLayout.getWidth(-40),
                        top: AppLayout.getHeight(-40),
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: AppLayout.getWidth(18),color: Color(0xFF189999)),
                          ),
                        ),)
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12),vertical: AppLayout.getHeight(12)),
                    height: AppLayout.getHeight(190),
                    width: size.width*.44,
                    decoration: BoxDecoration(
                        color: Style.orangeColor,
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    child: Column(
                      children: [
                        Text("Take love", style: Style.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.tag_faces_rounded, color: Colors.yellow, size: 40),
                              ),
                              WidgetSpan(
                                child: Icon(Icons.tag_faces_rounded, color: Colors.yellow, size: 40),
                              ),
                              WidgetSpan(
                                child: Icon(Icons.tag_faces_rounded, color: Colors.yellow, size: 40),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
