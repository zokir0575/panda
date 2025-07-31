import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panda/assets/app_icons.dart';
import 'package:panda/assets/colors.dart';

class LocationSelectionScreen extends StatefulWidget {
  const LocationSelectionScreen({super.key});

  @override
  State<LocationSelectionScreen> createState() =>
      _LocationSelectionScreenState();
}

class _LocationSelectionScreenState extends State<LocationSelectionScreen> {
  final List<String> locations = [
    'Ташкент',
    'Самарканд',
    'Бухара',
    'Андижан',
    'Наманган',
    'Фергана',
    'Нукус',
    'Карши',
    'Термез',
    'Ургенч',
    'Гулистан',
    'Джизак',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          surfaceTintColor: white,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: SvgPicture.asset(
                  AppIcons.arrowBack,
                  height: 28,
                  width: 28,
                ),
              ),
            ),
          ),
          centerTitle: false,
          title: Text(
            'Местоположение',
            style: TextStyle(
              color: Color(0xff4d4d4d),
              fontWeight: FontWeight.w700,
              fontSize: 24,
              height: 1.2,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Поиск',
                    hintStyle: TextStyle(
                      color: Color(0xffbdbdbd),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Container(
                      width: 18,
                      height: 18,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(AppIcons.search),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Text(
                        'Выбрать город',
                        style: TextStyle(
                          color: Color(0xff4d4d4d),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            locations[index - 1],
                            style: TextStyle(
                              color: Color(0xff4d4d4d),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          SvgPicture.asset(AppIcons.chevronRight),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    if (index == 0) {
                      return SizedBox();
                    }
                    return Container(
                      height: 1,
                      color: Color(0xffEEEEEE).withOpacity(.93),
                    );
                  },
                  itemCount: locations.length + 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
