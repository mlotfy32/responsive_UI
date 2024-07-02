
import 'package:flutter/material.dart';
import 'package:responsive_project/utiles/textStyles.dart';
class customeForm extends StatelessWidget {
  const customeForm({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title[index],
          style: textStyles.text16.copyWith(color: Color(0xff064061)),
        ),
        Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffFAFAFA),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: subtitle[index],
                  suffixIcon: index == 3 ? Icon(Icons.arrow_drop_down) : null,
                  hintStyle:
                      textStyles.text16.copyWith(color: Color(0xffAAAAAA)),
                 
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent))),
            ))
      ],
    );
  }
}
List<String> title = [
  'Customer name',
  'Customer Email',
  'Item name',
  'Item mount'
];
List<String> subtitle = [
  'Type customer name',
  'Type customer email',
  'Type customer name',
  'USD'
];
