import 'package:flutter/material.dart';

import 'package:responsive_project/Layouts/mobile/mobile/section_two/customeForm.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_two/topPart.dart';
import 'package:responsive_project/utiles/app_Images.dart';
import 'package:responsive_project/utiles/textStyles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project/utiles/textStyles.dart';

import '../section_three/section3Content.dart';

class bottom_part extends StatelessWidget {
  const bottom_part({super.key, required this.istap});
  final bool istap;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const topPart(),
            Container(
              height: 200,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 110,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) => customeForm(
                        index: index,
                      )),
            ),
            const Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add more details',
                      style:
                          textStyles.text16.copyWith(color: Color(0xff4EB7F2)),
                    )),
                Flexible(
                    child: customeContainer(
                  istap: istap,
                ))
              ],
            ),
          ],
        ));
  }
}

class customeContainer extends StatelessWidget {
  const customeContainer({
    super.key,
    required this.istap,
  });
  final bool istap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: istap == true
          ? () {
            print('ddd');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => section3Content()));
            }
          : null,
      child: Container(
        width: 200,
        height: 45,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            'Send Money',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
