
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/layout.dart';
import '../utils/style.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({Key? key, required this.firstTab,required this.secondTab}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(7)),
            width: size.width*.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50))),
              color:Colors.white,
            ),
            child: Center(
              child: Text(firstTab),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(7)),
            width: size.width*.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50))),
              color: Style.transparent,
            ),
            child: Center(
              child: Text(secondTab),
            ),
          ),
        ],
      ),
    );
  }
}
