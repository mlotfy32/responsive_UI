import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_one/customeDrawer.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/section2Content.dart';

class tabletContent extends StatelessWidget {
  const tabletContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        drawer: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: customeDrawer(),
    ),body: section2_Content(),);
  }
}
