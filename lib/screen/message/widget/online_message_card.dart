import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../widget/custom_text.dart';

class OnlineMessageCard extends StatefulWidget {
  const OnlineMessageCard({super.key});

  @override
  State<OnlineMessageCard> createState() => _OnlineMessageCardState();
}

class _OnlineMessageCardState extends State<OnlineMessageCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(),
              Positioned(
                  bottom: 1.0,
                  right: 1,
                  child: Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.blue,
                    ),
                  ))
            ],
          ),
          CustomText(
            data: "Messages",
            color: Palette.primaryColor,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
