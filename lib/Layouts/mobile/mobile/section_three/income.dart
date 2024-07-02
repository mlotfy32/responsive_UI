import 'package:flutter/material.dart';
import 'package:responsive_project/utiles/app_Images.dart';
import 'package:responsive_project/utiles/textStyles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class income extends StatelessWidget {
  const income({super.key,});
//final int x;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: textStyles.text20,
              ),
              Container(
                width: 134,
                height: 48,
                padding: const EdgeInsets.all(12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Monthly', style: textStyles.text16),
                    const SizedBox(width: 12),
                    Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(Assets.Frame237754),
                SizedBox(width: MediaQuery.sizeOf(context).width-200,
                  height: 180,
                  child: ListView.builder(itemCount: 4,physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ListTile(
                            leading: CircleAvatar(
                              radius: 5,
                              backgroundColor: col[index],
                            ),
                            title: Text(
                              title[index],
                              style: textStyles.text16,
                            ),
                            trailing: Text(
                              trealing[index],
                              style: textStyles.text16
                                  .copyWith(color: Color(0xff208CC8)),
                            ),
                          )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<String> title = [
  'Design service',
  'Design product',
  'Product royalti',
  'Other'
];
List<String> trealing = ['%40', '%25', '%20', '%22'];
List<Color> col = [
  Color(0xff208CC8),
  Color(0xff4EB7F2),
  Color(0xff064061),
  Color(0xffE2DECD)
];
