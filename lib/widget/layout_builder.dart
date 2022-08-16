
import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const LayoutBuilderWidget({Key? key, this.isColor, required this.sections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth()/sections).floor(), (index)
          => SizedBox(
            width: 5, height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(color:isColor == null ? Colors.grey.shade400
                  : Colors.white
              ),
            ),
          )
          ),
        );
      },
    );
  }
}
