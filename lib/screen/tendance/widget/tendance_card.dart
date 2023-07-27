import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../widget/widget.dart';

class TendanceCard extends StatelessWidget {
  const TendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 130.0,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                )),
            child: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: ListTile(
                trailing: Icon(Icons.favorite),
              ),
            ),
          ),
          Container(
            height: 90.0,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Palette.tryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                )),
            child: const Column(children: [
              ListTile(
                title: CustomText(
                  data: "Savana",
                  color: Palette.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(data: "Savana", color: Colors.grey),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        CustomText(
                          data: "4.8",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          data: "(1.2k)",
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
                trailing: CustomText(
                  data: "(1.2k)",
                  color: Colors.grey,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
