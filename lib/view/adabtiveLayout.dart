import 'package:flutter/material.dart';
import 'package:responsive_project/Layouts/desctop/deskTop.dart';
import 'package:responsive_project/Layouts/mobile/mobile/moblile.dart';
import 'package:responsive_project/Layouts/tablet/tablet.dart';

class adabyiveLayout extends StatelessWidget {
  const adabyiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        print('===============${constrains.maxHeight}');
        print('mobile');
        return mobileLarout();
      } else if (constrains.maxWidth < 900) {
        print('tab');
        return tapletLayout();
      }
      print('deskTop');
      return desktopLayout();
    });
  }
}
