
import 'package:responsive_project/utiles/textStyles.dart';

import 'package:flutter/material.dart';

class customeRow extends StatelessWidget {
  const customeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          '  All Expenses',
          style: textStyles.text20.copyWith(color: Color(0xFF064060)),
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
      ]),
    );
  }
}
