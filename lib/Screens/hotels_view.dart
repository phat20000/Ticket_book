
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/layout.dart';
import 'package:ticket_booking/utils/style.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Style.primaryColor,
        borderRadius: BorderRadius.circular(17),
        boxShadow:[ BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 20,
          spreadRadius: 5
        ),]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Style.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}")
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Style.headLineStyle2.copyWith(color: Style.kakiColor),),
          const Gap(5),
          Text(
              hotel['destination'],
            style: Style.headLineStyle3.copyWith(color: Colors.white),),
          const Gap(8),
          Text(
            "\$${hotel['price']}/Night",
            style: Style.headLineStyle2.copyWith(color: Style.kakiColor),),
        ],
      ),
    );
  }
}
