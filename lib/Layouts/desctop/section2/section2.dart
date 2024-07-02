import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/bottomPart.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/upperpart.dart';

class section2 extends StatelessWidget {
  const section2({super.key, required this.istap});
final bool istap;

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(vertical: 10),
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: upperpart()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: bottom_part(istap: false,),
        )
      ],
    ));
  }
}
