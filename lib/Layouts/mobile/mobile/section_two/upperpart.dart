import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/customeContainer1.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/customeRow1.dart';
import 'package:responsive_project/utiles/app_Images.dart';
import 'package:responsive_project/utiles/textStyles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class upperpart extends StatefulWidget {
  const upperpart({super.key});

  @override
  State<upperpart> createState() => _upperpartState();
}

class _upperpartState extends State<upperpart> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        customeRow(),
        SizedBox(
          height: 5,
        ),
        Row(
            children: title.asMap().entries.map((e) {
          int index = e.key;

          if (index == 1) {
            return Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                  onTap: () {
                    selected = index;
                    print(index);
                    setState(() {});
                  },
                  child: Expanded(child: customeContainer(index: index, selected: selected))),
            ));
          } else {
            return Expanded(
                child: GestureDetector(
                    onTap: () {
                      selected = index;
                      print(index);
                      setState(() {});
                    },
                    child: customeContainer(index: index, selected: selected)));
          }
        }).toList())
        /*
        SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
             
              itemBuilder: (context, index) => customeContainer(index: index),
              itemCount: 3,
            )),*/
        ,
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}

List<String> icons = [Assets.Moneys, Assets.CardReceive, Assets.CardSend];
List<String> title = ['Balance', 'Income', 'Expenses'];
