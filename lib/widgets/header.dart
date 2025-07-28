
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:panda/assets/app_images.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppImages.logo),
        const SizedBox(height: 36),
        Text(
          'PANDA',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 72,
            foreground:
            Paint()
              ..shader = const LinearGradient(
                colors: [Color(0xff000000), Color(0xff585858), ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(Rect.fromLTWH(0.0, 0.0, 350.0, 70.0)),
          ),
        ),
      ],
    );
  }
}
