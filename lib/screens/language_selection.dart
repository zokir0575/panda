import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda/assets/colors.dart';
import 'package:panda/screens/location_permission.dart';
import 'package:panda/widgets/header.dart';
import 'package:panda/widgets/w_button.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    final ValueNotifier<String> selectedLanguage = ValueNotifier(
      'uzbek',
    ); // Default to uzbek selected
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            children: [
              Spacer(flex: 2),
              Header(),
              Spacer(flex: 3),
              Text(
                'Выберите язык приложения',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 36),
              ValueListenableBuilder<String>(
                valueListenable: selectedLanguage,
                builder: (context, currentLanguage, child) {
                  return Row(
                    children: [
                      Expanded(
                        child: WButton(
                          color:
                              currentLanguage == 'uzbek' ? primaryColor : white,
                          text: 'O\'zbekcha',
                          textStyle: TextStyle(
                            color:
                                currentLanguage == 'uzbek'
                                    ? white
                                    : primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          border:
                              currentLanguage == 'uzbek'
                                  ? null
                                  : Border.all(width: 1, color: primaryColor),
                          onTap: () {
                            selectedLanguage.value = 'uzbek';
                          },
                          hint: 'Tap to choose uzbek language',
                          semanticsLabel: 'Uzbek',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: WButton(
                          color:
                              currentLanguage == 'russian'
                                  ? primaryColor
                                  : white,
                          onTap: () {
                            selectedLanguage.value = 'russian';
                          },
                          text: 'Русский',
                          textStyle: TextStyle(
                            color:
                                currentLanguage == 'russian'
                                    ? white
                                    : primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          border:
                              currentLanguage == 'russian'
                                  ? null
                                  : Border.all(width: 1, color: primaryColor),
                          hint: 'Tap to choose russian language',
                          semanticsLabel: 'russian',
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 16),
              WButton(
                onTap:
                    () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => LocationPermission(),
                      ),
                    ),
                text: 'Продолжить',
                textStyle: TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                hint: 'Tap to continue',
                semanticsLabel: 'Continue button',
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
