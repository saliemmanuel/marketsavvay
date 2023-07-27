import 'package:flutter/material.dart';
import 'package:marketsavvay/screen/tendance/widget/tendance_card.dart';

import '../../config/config.dart';
import '../../widget/widget.dart';

class Tendance extends StatefulWidget {
  const Tendance({super.key});

  @override
  State<Tendance> createState() => _TendanceState();
}

class _TendanceState extends State<Tendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.tryColor,
        title: const CustomText(
          data: "Tendances",
          color: Palette.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        color: Palette.tryColor,
        child: Column(
          children: [
            Container(
              height: 140.0,
              width: double.infinity,
              decoration: const BoxDecoration(color: Palette.tryColor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(
                                left: 10.0, right: 15.0, bottom: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50.0)),
                            child: const ListTile(
                              leading: Icon(Icons.search),
                              title: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search your services'),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const CustomText(
                              data: 'Cancel',
                              color: Palette.primaryColor,
                            )),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 15.0),
                      Chip(
                        label: Text("Your current location"),
                        backgroundColor: Palette.forColor,
                        avatar: Icon(Icons.telegram),
                      ),
                      SizedBox(width: 15.0),
                      Chip(
                        label: Text("dkjs"),
                        backgroundColor: Palette.forColor,
                        avatar: Icon(Icons.panorama_wide_angle),
                      ),
                    ],
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
                      TendanceCard(),
                      TendanceCard(),
                      TendanceCard(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     TextButton.icon(
      //         style: ButtonStyle(
      //             backgroundColor: MaterialStateProperty.all(Palette.forColor)),
      //         label: const CustomText(
      //           data: "Filter",
      //           color: Colors.black,
      //         ),
      //         onPressed: () {},
      //         icon: const Icon(Icons.filter_alt_sharp)),
      //     const SizedBox(width: 10.0),
      //     TextButton.icon(
      //       label: const CustomText(
      //         data: "Map",
      //         color: Colors.black,
      //       ),
      //       onPressed: () {},
      //       icon: const Icon(Icons.map),
      //       style: ButtonStyle(
      //           backgroundColor: MaterialStateProperty.all(Palette.forColor)),
      //     )
      //   ],
      // ),
    );
  }
}
