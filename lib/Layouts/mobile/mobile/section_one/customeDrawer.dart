import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_one/ListTileinfo.dart';
import 'package:responsive_project/Layouts/mobile/mobile/section_one/customeList.dart';
import 'package:responsive_project/utiles/app_Images.dart';
import 'package:responsive_project/utiles/textStyles.dart';

class customeDrawer extends StatelessWidget {
  const customeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: h * 0.05,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFAFAFA)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(Assets.Frame),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lekan Okeowo',
                        style: textStyles.text20,
                      ),
                      Text(
                        'demo@gmail.com',
                        style: textStyles.text12,
                      ),
                    ],
                  ),
                ],
              )),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: h * 0.02,
          ),
        ),
        ListTileInfo(state: 1),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
                Expanded(child:SizedBox()),
              ListTile(
                title: Text('Setting System'),
                leading: SvgPicture.asset(Assets.Setting2),
              ),
              ListTile(
                title: Text('Logout account'),
                leading: SvgPicture.asset(Assets.Logout),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        )
      ],
    );
  }
}
