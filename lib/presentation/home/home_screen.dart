import 'package:ecommerce/presentation/home/bloc/tab_bloc.dart';
import 'package:ecommerce/presentation/home/event/tab_event.dart';
import 'package:ecommerce/presentation/home/state/tab_state.dart';
import 'package:ecommerce/presentation/widgets/tab_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, TabState>(
      builder: (context, activeTab) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: _fetchActiveTab(tabState: activeTab),
          bottomNavigationBar: TabSelector(
            activeTab: activeTab,
            onTabSelected: (tab) =>
                BlocProvider.of<TabBloc>(context).add(TabUpdated(tab)),
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
}
