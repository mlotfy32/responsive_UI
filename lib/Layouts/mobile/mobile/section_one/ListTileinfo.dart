import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project/utiles/app_Images.dart';
import 'package:responsive_project/utiles/textStyles.dart';

class ListTileInfo extends StatefulWidget {
  ListTileInfo({
    super.key,
    required this.state,
  });

  final int state;

  @override
  State<ListTileInfo> createState() => _ListTileInfoState();
}

class _ListTileInfoState extends State<ListTileInfo> {
  @override
  int active = 0;

  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Container(
        child:  ListTile(
                onTap: () {
                  setState(() {
                    active = index;
                    print(active);
                    print(index);
                  });
                },
                title: Text('${title1[index]}',
                    style: active == index
                        ? textStyles.text16.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4EB7F2))
                        : textStyles.text16.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF064060))),
                leading: SvgPicture.asset('${leading1[index]}'),
                trailing: index == active && widget.state == 1
                    ? VerticalDivider(
                        thickness: 3,
                        color: Color(0xFF4EB7F2),
                      )
                    : SizedBox(
                        width: 0,
                        height: 0,
                      )),
      ),
    );
  }
}

List<String> title1 = [
  'Dashboard',
  'My Transaction',
  'Statistics',
  'Wallet Account',
  'My Investments',
  
];
List<String> leading1 = [
  Assets.Category2,
  Assets.ConvertCard,
  Assets.graph,
  Assets.Wallet2,
  Assets.Chart2,
 
];
