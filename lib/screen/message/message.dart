import 'package:flutter/material.dart';
import 'package:marketsavvay/screen/message/widget/online_message_card.dart';

import '../../config/config.dart';
import '../../widget/widget.dart';
import 'widget/message_card.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.tryColor,
        title: CustomText(
          data: "Messages",
          color: Palette.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        color: Palette.tryColor,
        child: Column(
          children: [
            Container(
              height: 120.0,
              width: double.infinity,
              decoration: const BoxDecoration(color: Palette.tryColor),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        OnlineMessageCard(),
                        OnlineMessageCard(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                      color: Palette.forColor,
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(35.0),
                          topStart: Radius.circular(35.0))),
                  child: ListView(
                    shrinkWrap: true,
                    children: const [
                      MessageCard(),
                      MessageCard(),
                      MessageCard(),
                      MessageCard(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
