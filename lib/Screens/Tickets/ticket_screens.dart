
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/Screens/Tickets/ticket_view.dart';
import 'package:ticket_booking/utils/info_list.dart';
import 'package:ticket_booking/utils/layout.dart';
import 'package:ticket_booking/utils/style.dart';
import 'package:ticket_booking/widget/column_layout.dart';
import 'package:ticket_booking/widget/layout_builder.dart';
import 'package:ticket_booking/widget/ticket_tab.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  final bool? isColor;
  const TicketScreen({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(top: AppLayout.getHeight(20),right: AppLayout.getWidth(10),left: AppLayout.getHeight(25)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets",style: Style.headLineStyle1),
              Gap(AppLayout.getHeight(20)),
             const TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              TicketView(ticket: ticketList[0], isColor : true,),
              Gap(AppLayout.getHeight(1)),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(15)),
                margin: EdgeInsets.only(right:AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          alignment: CrossAxisAlignment.start,
                            firstText: "phat", secondText: "123",isColor:false,),
                        ColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: "1234 567890", secondText: "Passport",isColor:false,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    LayoutBuilderWidget(sections: 15),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: "123456 65432178",
                          secondText: "Number of E-ticket",
                          isColor:false,),
                        ColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: "P123U1",
                          secondText: "Booking code",
                          isColor:false,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    LayoutBuilderWidget(sections: 15),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png",scale:11),
                                Text(" *** 1234",style: Style.headLineStyle3,)
                              ],
                            ),
                            Gap(5),
                            Text("Payment method", style: Style.headLineStyle4,),
                          ],
                        ),
                        ColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: "\$999",
                          secondText: "Price",
                          isColor:false,),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 1,),
              Container(
                margin: EdgeInsets.only(right: 15),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    )
                  ),
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: 'https://phat123.com',
                  drawText: false,
                  color: Style.textColor,
                  width: double.infinity,
                  height: 70,
                ),
              )),
              Gap(AppLayout.getHeight(20)),
              TicketView(ticket: ticketList[0],),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(15),
              top: AppLayout.getHeight(300),
              child: Container(
                padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Style.textColor,width: 2)
            ),
            child: CircleAvatar(maxRadius: 4,backgroundColor: Style.textColor,),
          )),
          Positioned(
              right: AppLayout.getHeight(15),
              top: AppLayout.getHeight(300),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Style.textColor,width: 2)
                ),
                child: CircleAvatar(maxRadius: 4,backgroundColor: Style.textColor,),
              )),
        ],
      )
    );
  }
}
