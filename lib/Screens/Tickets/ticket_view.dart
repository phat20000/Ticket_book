import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:ticket_booking/utils/style.dart';
import 'package:ticket_booking/widget/column_layout.dart';
import 'package:ticket_booking/widget/layout_builder.dart';
import 'package:ticket_booking/widget/thick_container.dart';

import '../../utils/layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key,  required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.8,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true?163:169 ),
      child: Container(
        margin: EdgeInsets.only(right:AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null? const Color(0xFF526799): Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(AppLayout.getHeight(21)),
                  topRight:Radius.circular(AppLayout.getHeight(21)),)),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                          ticket['from']['code'],
                          style: isColor== null ? Style.headLineStyle3.copyWith(color: Colors.white)
                              : Style.headLineStyle3),
                      const Spacer(),
                      const ThickContainer(isColor: true,),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilderWidget(sections: 6,)
                        ),
                          Center(child: Transform.rotate(angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null ? Colors.white : Color(0xFF8ACCF7),
                            ),
                          )),
                        ],
                      )),
                      const ThickContainer(isColor: true,),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor== null ? Style.headLineStyle3.copyWith(color: Colors.white)
                        : Style.headLineStyle3
                        ),
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(65),
                        child: Text(
                          ticket['from']['name'],
                          style:isColor == null ? Style.headLineStyle4.copyWith(color: Colors.white)
                          :Style.headLineStyle4,
                        ),
                      ),
                      Text(ticket['flying_time'],
                        style:isColor == null ? Style.headLineStyle4.copyWith(color: Colors.white)
                          :Style.headLineStyle4,),
                      SizedBox(
                        width:AppLayout.getWidth(65) ,
                        child: Text(
                          ticket['to']['name'],
                          style:isColor == null ? Style.headLineStyle4.copyWith(color: Colors.white)
                            :Style.headLineStyle4,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color:isColor == null ? Style.orangeColor : Colors.white,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child:  DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor == null?Colors.grey.shade200 : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        )
                      ),
                    ),
                  ),
                  Expanded(child:
                  LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                          height: AppLayout.getHeight(1),width: AppLayout.getWidth(5),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: isColor == null ?  Colors.white :Colors.grey.shade300,
                            ),
                          ),
                        ))
                    );
                  },

                  )),
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor == null?Colors.grey.shade200 : Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color:isColor == null? Style.orangeColor: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(isColor==null?21:0)),
                      bottomRight: Radius.circular(AppLayout.getHeight(isColor==null?21:0))),
              ),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(10),
                  right:AppLayout.getHeight(16),
                  left: AppLayout.getHeight(16),
                  bottom: AppLayout.getHeight(16)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                          firstText: ticket['date'],
                          secondText: "Date",
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                      ),
                      ColumnLayout(
                          firstText: ticket['departure_time'].toString(),
                          secondText: "Departure time",
                          alignment: CrossAxisAlignment.start,
                          isColor:isColor,),
                      ColumnLayout(
                          firstText: ticket['number'].toString(),
                          secondText: "Number",
                          alignment: CrossAxisAlignment.start,
                          isColor:isColor,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
