import 'package:ecommerce/presentation/styles/colors.dart';
import 'package:ecommerce/presentation/widgets/circular_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CircularCategoryWidget(
        name: "Man T-Shirt",
        icon: Icon(
          Icons.home,
          color: AppColors.primaryColor,
        ));
  }
}
