
import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/bottomPart.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/customeListView.dart';
import 'package:responsive_project/utiles/textStyles.dart';

class topPart extends StatelessWidget {
  const topPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Quick Invoice',
                style: textStyles.text24.copyWith(color: Color(0xFF064060))),
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xffFAFAFA),
              child: Icon(
                Icons.add,
                color: Colors.blue,
              ),
            )
          ]),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Latest Transaction',
                style: textStyles.text16,
                textAlign: TextAlign.start,
              )),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 72,
            child: customeListView(),
          ),
          Divider(color: Color(0xffF1F1F1),),
         
        ],
      ),
    );
  }
}