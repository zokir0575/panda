import 'package:flutter/material.dart';
import 'package:panda/assets/app_images.dart';
import 'package:panda/assets/colors.dart';
import 'package:panda/utils/size_scaler.dart';
import 'package:panda/widgets/w_button.dart';

class LocationPermission extends StatelessWidget {
  const LocationPermission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding:   EdgeInsets.fromLTRB(26, MediaQuery.paddingOf(context).top, 26, MediaQuery.paddingOf(context).bottom ),
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset(AppImages.map, height: scaleHeight(375, context)),
            Spacer(flex: 3),
            Text(
              'Разрешите доступ к геопозиции',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Так мы сможем показать интересные предложения и пункты выдачи-приёма\nрядом с вами',
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 35),
            WButton(
              onTap: () {},
              hint: 'Tap to access',
              semanticsLabel: 'Access button',
              text: 'Разрешить доступ',
              textStyle: TextStyle(
                color: white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            WButton(
              onTap: () {},
              hint: 'Tap to show location',
              semanticsLabel: 'Show location button',
              text: 'Указать местоположение',
              color: white,
              border: Border.all(width: 1, color: primaryColor),
              textStyle: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
