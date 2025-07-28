import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:panda/assets/colors.dart';
import 'package:panda/widgets/w_scale.dart';

class WButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Color? color;
  final Color textColor;
  final TextStyle? textStyle;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final GestureTapCallback onTap;
  final BoxBorder? border;
  final double borderRadius;
  final Widget? child;
  final Color disabledColor;
  final bool isDisabled;
  final bool isLoading;
  final double? scaleValue;
  final List<BoxShadow>? shadow;
  final bool hasError;
  final Widget? loader;
  final Color? indicatorColor;
  final Gradient? gradient;
  final bool isInfiniteHeight;
  final String semanticsLabel;
  final String hint;
  final bool? isCheckBox;
  final bool showLeftArrow;
  final bool showRightArrow;
  final String? icon;

  const WButton({
    required this.onTap,
    this.text = '',
    this.isCheckBox,
    this.color = primaryColor,
    this.hasError = false,
    this.showRightArrow = false,
    this.showLeftArrow = false,
    this.isInfiniteHeight = false,
    this.indicatorColor,
    this.icon,
    this.loader,
    required this.hint,
    required this.semanticsLabel,
    this.textColor = white,
    this.borderRadius = 16,
    this.disabledColor = Colors.grey,
    this.isDisabled = false,
    this.isLoading = false,
    this.width,
    this.height,
    this.margin,
    this.gradient,
    this.padding,
    this.textStyle,
    this.border,
    this.child,
    this.scaleValue,
    this.shadow,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Semantics(
    checked: isCheckBox,
    child: WScaleAnimation(
      hint: hint,
      semanticsLabel: semanticsLabel,
      scaleValue: scaleValue ?? 0.95,
      onTap: () {
        if (!(isLoading || isDisabled)) {
          onTap();
        }
      },
      isDisabled: isDisabled,
      child: Container(
        width: width,
        height: isInfiniteHeight ? null : height ?? 56,
        margin: margin,
        padding: padding ?? EdgeInsets.zero,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: gradient,
          color:
              gradient == null
                  ? isDisabled
                      ? disabledColor
                      : color
                  : null,
          borderRadius: BorderRadius.circular(borderRadius),
          border: hasError ? Border.all(color: Colors.red, width: 1) : border,
          boxShadow: shadow,
        ),
        child:
            isLoading
                ? Center(
                  child:
                      loader ??
                      CupertinoActivityIndicator(
                        color: indicatorColor ?? Colors.white,
                      ),
                )
                : child ??
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          text,
                          style: textStyle,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
      ),
    ),
  );
}
