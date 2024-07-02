import 'package:flutter/material.dart';
import 'package:responsive_project/utiles/textStyles.dart';

class customeList extends StatelessWidget {
  const customeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: title.asMap().entries.map((e) {
      int index = e.key;
      return Container(
        margin: EdgeInsets.only(top: 10),padding:   EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xffFAFAFA)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title[index],
                    style: textStyles.text16.copyWith(color: Color(0xff064061)),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    sub[index],
                    style: textStyles.text16.copyWith(color: Color(0xffAAAAAA)),
                  ),
                ],
              ),
            ),
            Text(
              '\$ ${lead[index]}',
              style: index == 0
                  ? textStyles.text20.copyWith(color: Color(0xffF3735E))
                  : textStyles.text20.copyWith(color: Color(0xff7DD97B)),
            ),
          ],
        ),
      );
    }).toList());
  }
}

List title = [
  'Cash Withdrawal',
  'Landing Page project',
  'Juni Mobile App project'
];
List sub = [
  '13 Apr, 2022 ',
  '13 Apr, 2022 at 3:30 PM',
  '13 Apr, 2022 at 3:30 PM'
];
List lead = ['20,129', '2,000', '20,129'];
