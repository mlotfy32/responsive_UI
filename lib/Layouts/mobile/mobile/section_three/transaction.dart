import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_three/customeList.dart';
import 'package:responsive_project/utiles/textStyles.dart';

class transactions extends StatelessWidget {
  const transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
           Text(
            'Transaction History',
            style: textStyles.text20,
          ),
          Text(
            'see all',
            style: textStyles.text16.copyWith(color: Color(0xff4EB7F2)),
          )
         ],),
         SizedBox(height: 250,child: customeList(),)
        ],
      ),
    );
  }
}
