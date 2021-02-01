import 'package:ecommerce/presentation/styles/colors.dart';
import 'package:flutter/painting.dart';

abstract class AppText {
  static const FONT_FAMILY = "Poppins";

  static final title = TextStyle(
      color: TextColors.darkTitleColor,
      fontSize: 12,
      fontFamily: FONT_FAMILY,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.50);

  static final price = TextStyle(
    color: TextColors.primaryColor,
    fontSize: 12,
    fontFamily: FONT_FAMILY,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.50,
  );

  static final priceDiscount = TextStyle(
    color: TextColors.subTitleColor,
    fontSize: 10,
    letterSpacing: 0.50,
  );

  static final discount = TextStyle(
    color: TextColors.discountColor,
    fontSize: 10,
    fontFamily: FONT_FAMILY,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.50,
  );
}
