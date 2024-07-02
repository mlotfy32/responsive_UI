import 'package:flutter/material.dart';
import 'package:responsive_project/utiles/app_Images.dart';
import 'package:responsive_project/utiles/textStyles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class customeContainer extends StatelessWidget {
  customeContainer({super.key, required this.index, required this.selected});
  final int index;
final int selected;
  @override

  Widget build(BuildContext context) {
  

    return AnimatedContainer(duration: Duration(seconds: 1),height: MediaQuery.sizeOf(context).height*0.15+60,padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          border:
              Border.all(color: Colors.black87.withOpacity(0.1), width: 1),
          borderRadius: BorderRadius.circular(15),
          color: index == selected ? Color(0xff4EB7F2) : Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: SvgPicture.asset(icons[index]),
                radius: 25,
                backgroundColor: Color(0xffFAFAFA),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )
            ],
          ),
          Expanded(child: SizedBox()),
          Align(alignment: Alignment.bottomLeft,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title[index],
                  style: textStyles.text16,
                  textAlign: TextAlign.start,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0,bottom: 5),
                  child: Text(
                    'April 2022',
                    style:index==selected? textStyles.text14:textStyles.text14.copyWith(color: Color(0xffAAAAAA)),
                  ),
                ),
                Text(
                  '\$20,129',
                  style:index==selected?
                      textStyles.text16.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white):textStyles.text20.copyWith(color: Color(0xff4EB7F2)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
          ),
        ],
      ),
    );
  }
}

List<String> icons = [Assets.Moneys, Assets.CardReceive, Assets.CardSend];
List<String> title = ['Balance', 'Income', 'Expenses'];
