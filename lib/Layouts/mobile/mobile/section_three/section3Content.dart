import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_three/income.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_three/mycard.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_three/transaction.dart';

class section3Content extends StatelessWidget {
   section3Content({super.key,});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black87.withOpacity(0.1),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: MyCard()),
            SliverFillRemaining(
              hasScrollBody: false,
              child: income(),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 5,),)
          ],
        ),
      ),
    );
  }
}
