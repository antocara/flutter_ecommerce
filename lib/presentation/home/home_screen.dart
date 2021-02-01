import 'package:ecommerce/presentation/styles/colors.dart';
import 'package:ecommerce/presentation/widgets/circular_category_widget.dart';
import 'package:ecommerce/presentation/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ProductItemWidget(
      name: "Man T-Shirt blue color",
      price: "299,45",
      imageUrl: 'https://picsum.photos/250?image=9',
      discount: "24 % Off",
      priceDiscount: "534,45",
    );
  }
}
