
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/layout.dart';
import 'package:ticket_booking/utils/style.dart';
import 'package:ticket_booking/widget/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/img_1.png"
                    )
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets",style: Style.headLineStyle1,),
                  Text("New-York",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500)),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white, size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text("Premium Status", style: TextStyle(fontWeight: FontWeight.w600,
                            color: Color(0xFF526799)
                        ),),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){},
                      child: Text(
                        "Edit", style: Style.textStyle.copyWith(
                          color: Style.primaryColor,
                          fontWeight: FontWeight.w400),
                      )
                  )
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade400,),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: Style.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20))
                ),
              ),
              Positioned(
                top: -40,
                right: -30,
                child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF264CD2),width: 18),
                ),),),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal: AppLayout.getHeight(30)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                     backgroundColor: Colors.white,
                     maxRadius: 25,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Style.primaryColor,
                        size: 30,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "You\'v got a new award",
                            style: Style.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )),
                        Text(
                            "You\'v 95 flights in a year",
                            style: Style.headLineStyle3.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9)
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated miles",style: Style.headLineStyle2,),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal:AppLayout.getWidth(15)),
              child:Column(
                children: [
                  Text("123456",style: Style.headLineStyle1.copyWith(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      color: Style.textColor,
                  ),),
                  Gap(AppLayout.getHeight(20)),
                  Divider(color: Colors.grey.shade400,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accrued",style: Style.headLineStyle4.copyWith(fontSize: 16),),
                      Text("11 June 2022",style: Style.headLineStyle4.copyWith(fontSize: 16),),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Divider(color: Colors.grey.shade400,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                          firstText:"23 042",
                          secondText:"Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false
                      ),
                      ColumnLayout(
                          firstText:"Airline CO",
                          secondText:"Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Divider(color: Colors.grey.shade400,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                          firstText:"24",
                          secondText:"Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false
                      ),
                      ColumnLayout(
                          firstText:"McDonal\'s",
                          secondText:"Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Divider(color: Colors.grey.shade400,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                          firstText:"52 304",
                          secondText:"Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false
                      ),
                      ColumnLayout(
                          firstText:"Exuma",
                          secondText:"Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false
                      ),
                    ],
                  ),
                ],
              ),
          ),
          Gap(AppLayout.getHeight(15)),
          InkWell(
            onTap: (){},
            child: Center(
              child:Text("How to get more miles",style: Style.textStyle.copyWith(color: Style.primaryColor,fontWeight: FontWeight.w500),),
            ),
          )
        ],
      ),
    );
  }
}
