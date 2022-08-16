
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/layout.dart';
import 'package:ticket_booking/utils/style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
      children: [
        Gap(AppLayout.getHeight(40)),
        Row(
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
            ],),
          ],
        ),
      ],
    );
  }
}
