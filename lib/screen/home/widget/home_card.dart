import 'package:flutter/material.dart';
import 'package:marketsavvay/widget/custom_text.dart';

import '../../../config/config.dart';

class HomeCard extends StatelessWidget {
  final Function()? onTap;
  final String? label;
  final String? deco;
  const HomeCard({
    Key? key,
    this.onTap,
    required this.label,
    required this.deco,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: SizedBox(
          height: 200.0,
          width: 170.0,
          child: Stack(
            children: [
              Positioned(
                  top: 40.0,
                  child: Container(
                    height: 90.0,
                    width: 170.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Palette.tryColor,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: CustomText(
                      data: deco!,
                      color: Colors.black,
                    ),
                  )),
              const Positioned(
                  left: 52.0, top: 5.0, child: CircleAvatar(radius: 32.0)),
              Positioned(
                bottom: 48.0,
                left: 45.0,
                child: Container(
                  height: 40.0,
                  width: 85,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Palette.primaryColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: CustomText(data: deco!),
                ),
              ),
              const Positioned(
                  bottom: 30.0,
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.blue,
                  )),
              const Positioned(
                  left: 15.0,
                  bottom: 30.0,
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.amber,
                  )),
              const Positioned(
                  left: 29.0,
                  bottom: 30.0,
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Palette.secondColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
