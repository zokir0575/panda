import 'package:flutter/cupertino.dart';

double scaleWidth(double figmaValue, BuildContext context) {

  return figmaValue * (MediaQuery.sizeOf(context).width / 375);
}

double scaleHeight(double figmaValue, BuildContext context) {

  return figmaValue * (MediaQuery.sizeOf(context).height / 812);
}
