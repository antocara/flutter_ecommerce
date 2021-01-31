import 'package:ecommerce/presentation/home/bloc/tab_bloc.dart';
import 'package:ecommerce/presentation/home/event/tab_event.dart';
import 'package:ecommerce/presentation/home/state/tab_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, TabState>(
      builder: (context, activeTab) {
        return PlatformScaffold(
          appBar: PlatformAppBar(
            title: Text('Home'),
          ),
          body: _fetchActiveTab(tabState: activeTab),
          bottomNavBar: PlatformNavBar(
            currentIndex: TabState.values.indexOf(activeTab),
            itemChanged: (index) => BlocProvider.of<TabBloc>(context)
                .add(TabUpdated(TabState.values[index])),
            items: TabState.values.map((tab) {
              return BottomNavigationBarItem(
                label: _tabTitle(tabState: tab),
                icon: PlatformWidget(
                  cupertino: (_, __) => Icon(_cupertinoTabIcon(tabState: tab)),
                  material: (_, __) => Icon(_materialTabIcon(tabState: tab)),
                ),
              );
            }).toList(),
            material: (_, __) => MaterialNavBarData(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.blue,
            ),
          ),
        );
      },
    );
  }

  Widget _fetchActiveTab({@required TabState tabState}) {
    switch (tabState) {
      case TabState.home:
        return Container();
      case TabState.search:
        return Container();
      case TabState.cart:
        return Container();
      case TabState.account:
        return Container();
    }
  }

  IconData _materialTabIcon({@required TabState tabState}) {
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

  IconData _cupertinoTabIcon({@required TabState tabState}) {
    switch (tabState) {
      case TabState.home:
        return CupertinoIcons.home;
      case TabState.search:
        return CupertinoIcons.search;
      case TabState.cart:
        return CupertinoIcons.shopping_cart;
      case TabState.account:
        return CupertinoIcons.person;
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
