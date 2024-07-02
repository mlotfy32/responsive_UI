import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/bottomPart.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/upperpart.dart';

class section2_Content extends StatelessWidget {
  const section2_Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87.withOpacity(0.1),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: upperpart()),
          SliverFillRemaining(hasScrollBody: false,
            child: bottom_part(istap: true,),
          )
        ],
      ),
    );
  }
}
