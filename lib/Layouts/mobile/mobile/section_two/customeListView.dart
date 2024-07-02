import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project/utiles/app_Images.dart';
import 'package:responsive_project/utiles/textStyles.dart';

class customeListView extends StatelessWidget {
  const customeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Container(
          width: 250,
        
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffFAFAFA)),
          child: IntrinsicWidth(
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(image[index]),
                SizedBox(
                  width: 5,
                ),
                IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title[index],
                        style: textStyles.text20,
                      ),
                      Text(
                        email[index],
                        style: textStyles.text12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
      itemCount: 3,
    );
  }
}

List<String> image = [Assets.Frame1, Assets.Frame3, Assets.Frame1];
List<String> title = ['Madrain Andi', 'Josua Nunito', 'Madrain Andi'];
List<String> email = [
  'Madrainandi20gmail.com',
  'Josua Nunito@gmail.com',
  'M adrainandi20@gmail.com'
];
