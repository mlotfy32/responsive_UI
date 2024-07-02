import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_three/transaction.dart';
import 'package:responsive_project/utiles/app_Images.dart';
import 'package:responsive_project/utiles/textStyles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'My card',
              style: textStyles.text20.copyWith(color: Color(0xff064061)),
            ),
          ),
          AspectRatio(aspectRatio: 420/200,
            child: Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff5FBEF3),
              ),
              child: SvgPicture.asset(
                Assets.Group,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),height: 10,width: 30,
                decoration: BoxDecoration(
                    color: Color(0xff5FBEF3),
                    borderRadius: BorderRadius.circular(20)),
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Color(0xffE8E8E8),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Color(0xffE8E8E8),
              ),
            ],
          ),
          Divider(
            color: Color(0xffF1F1F1),
          ),
          transactions()
        ],
      ),
    );
  }
}
