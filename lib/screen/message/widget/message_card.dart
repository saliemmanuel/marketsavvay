import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../widget/widget.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({super.key});

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: CustomText(
        data: "Samira",
        color: Palette.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      subtitle: CustomText(data: "hello", color: Colors.grey),
    );
  }
}
