
import 'package:ecommerce/presentation/tab/state/tab_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class TabSelector extends StatelessWidget {
  final TabState activeTab;
  final Function(TabState) onTabSelected;

  TabSelector({
    Key key,
    @required this.activeTab,
    @required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: TabState.values.indexOf(activeTab),
      onTap: (index) => onTabSelected(TabState.values[index]),
      items: TabState.values.map((tab) {
        return BottomNavigationBarItem(
          icon: Icon(
            _tabIcon(tabState: tab)
          ),
          label: _tabTitle(tabState: tab),
        );
      }).toList(),
    );
  }

  IconData _tabIcon({@required TabState tabState}) {
    switch (tabState) {
      case TabState.home:
        return Icons.home_outlined;
      case TabState.search:
        return Icons.search_outlined;
      case TabState.cart:
        return Icons.shopping_cart_outlined;
      case TabState.account:
        return Icons.account_box_outlined;
    }
  }

  String _tabTitle({@required TabState tabState}) {
    switch (tabState) {
      case TabState.home:
        return "Home";
      case TabState.search:
        return "Search";
      case TabState.cart:
        return "Cart";
      case TabState.account:
        return "Account";
    }
  }
}
