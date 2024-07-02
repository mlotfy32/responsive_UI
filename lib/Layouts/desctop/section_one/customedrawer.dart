import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_one/customeDrawer.dart';

class customeDrawerdesk extends StatelessWidget {
  const customeDrawerdesk({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Container(color: Colors.white,width:MediaQuery.sizeOf(context).width*0.25 ,child: customeDrawer());
  }
}