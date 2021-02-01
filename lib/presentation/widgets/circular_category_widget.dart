import 'package:ecommerce/presentation/styles/colors.dart';
import 'package:ecommerce/presentation/styles/texts.dart';
import 'package:flutter/widgets.dart';

///
///  CircularCategoryWidget(
///    name: "Man T-Shirt",
///    icon: Icon(
///    Icons.home,
///    color: Color(0xff40BFFF),
///    ));
///

class CircularCategoryWidget extends StatelessWidget {
  const CircularCategoryWidget({@required this.name, @required this.icon})
      : assert(name != null),
        assert(icon != null);

  final String name;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return circleCategory();
  }

  Widget circleCategory() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _circle(),
          SizedBox(height: 10),
          _title(),
        ],
      ),
    );
  }

  Widget _circle() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        border: Border.all(
          color: AppColors.borderDecoratorColor,
          width: 1,
        ),
        color: AppColors.whiteColor,
      ),
      child: icon,
    );
  }

  Widget _title() {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: AppText.priceDiscount,
    );
  }
}
