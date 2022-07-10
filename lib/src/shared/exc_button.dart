import 'package:flutter/material.dart';

import '../res/colors.dart';

class WonsButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final double? fontSize;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Color? color, borderColor, textColor;
  final double height;
  final double width;
  final double? borderRadius;
  const WonsButton(
      {Key? key,
      this.onPressed,
      this.child,
      this.text,
      this.fontSize,
      this.color,
      this.borderColor,
      this.textColor,
      this.verticalPadding,
      this.horizontalPadding,
      this.borderRadius,
      required this.height,
      required this.width})
      : assert(text != null || child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: color ?? AppColors.background,
            onSurface: color ?? AppColors.background,
            elevation: 0.0,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 15, horizontal: horizontalPadding ?? 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 10),
              side: BorderSide(
                  color: onPressed == null ? Colors.transparent : borderColor ?? color ?? AppColors.background),
            ),
            minimumSize: Size(width, height)),
        child: text != null ? Text(text!, style: buttonTextStyle()) : child);
  }

  buttonTextStyle() {
    return TextStyle(
      fontFamily: 'Gilroy',
      fontSize: fontSize ?? 16,
      color: textColor ?? borderColor ?? Colors.white,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
    );
  }
}

Widget visibilityToggle(Function? onToggle, bool _isHidden) => InkWell(
      onTap: onToggle != null ? () => onToggle() : null,
      child: Icon(_isHidden ? Icons.visibility : Icons.visibility_off, color: AppColors.primary),
    );
