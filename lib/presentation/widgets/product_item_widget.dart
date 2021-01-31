import 'package:ecommerce/presentation/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

///
/// ProductItemWidget(
/// name: "Man T-Shirt blue color",
/// price: "299,45",
/// imageUrl: 'https://picsum.photos/250?image=9',
/// discount: "24 % Off",
/// priceDiscount: "534,45",
/// );
///

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget(
      {@required this.name,
      @required this.price,
      @required this.imageUrl,
      String priceDiscount,
      String discount})
      : _priceDiscount = priceDiscount,
        _discount = discount,
        assert(name != null),
        assert(imageUrl != null),
        assert(price != null);

  final String name;
  final String price;
  final String imageUrl;
  final String _priceDiscount;
  final String _discount;

  @override
  Widget build(BuildContext context) {
    return circleCategory();
  }

  Widget circleCategory() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColors.borderDecoratorColor,
            width: 1,
          ),
          color: AppColors.whiteColor,
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _image(),
            SizedBox(height: 8),
            _title(),
            SizedBox(height: 8),
            _price(),
            SizedBox(height: 8),
            Container(
              height: 15,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _priceDiscountText(),
                  SizedBox(width: 8),
                  _discountText(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _image() {
    return Container(
      width: 109,
      height: 109,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: TextColors.subTitleColor),
      child: Image.network(imageUrl),
    );
  }

  Widget _title() {
    return SizedBox(
      width: 109,
      child: Text(
        name,
        style: TextStyle(
          color: TextColors.darkTitleColor,
          fontSize: 12,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w700,
          letterSpacing: 0.50,
        ),
      ),
    );
  }

  Widget _price() {
    return Text(
      price,
      style: TextStyle(
        color: TextColors.primaryColor,
        fontSize: 12,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w700,
        letterSpacing: 0.50,
      ),
    );
  }

  Widget _priceDiscountText() {
    return Text(
      _priceDiscount,
      style: TextStyle(
        color: TextColors.subTitleColor,
        fontSize: 10,
        letterSpacing: 0.50,
      ),
    );
  }

  Widget _discountText() {
    return SizedBox(
      width: 59,
      child: Text(
        _discount,
        style: TextStyle(
          color: TextColors.discountColor,
          fontSize: 10,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w700,
          letterSpacing: 0.50,
        ),
      ),
    );
  }
}
