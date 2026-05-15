import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';

class AppStyles {
  AppStyles._();

  static final OutlineInputBorder addressBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: const BorderSide(color: AppColors.background),
  );

  static const UnderlineInputBorder underLineBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  );

  static final OutlineInputBorder focusedTransparentBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: const BorderSide(color: Colors.transparent),
  );

  static final OutlineInputBorder energyBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: const BorderSide(color: Colors.transparent),
  );

  static final OutlineInputBorder focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: const BorderSide(color: AppColors.background, width: 0.3),
  );

  static final OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: const BorderSide(color: AppColors.primary, width: 0.3),
  );

  static final OutlineInputBorder focusErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.radius),
    borderSide: const BorderSide(color: AppColors.secondary),
  );
}

TextStyle errorTextStyle(BuildContext context) => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.error,
      fontWeight: FontWeight.w500,
      height: 1.4,
    );
