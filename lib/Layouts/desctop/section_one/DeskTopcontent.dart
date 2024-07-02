import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/desctop/section2/section2.dart';
import 'package:responsive_project/Layouts/desctop/section_one/customedrawer.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_three/section3Content.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/section2Content.dart';

class DeskTopcontent extends StatelessWidget {
  const DeskTopcontent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.black87.withOpacity(0.1),
      child: Row(
        children: [
          Expanded(
            child: customeDrawerdesk(),
            flex: 1,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: section2(istap: false,),
            flex: 2,
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(flex: 2, child: Container(child: section3Content(),))
        ],
      ),
    );
  }
}
