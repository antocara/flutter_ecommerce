
import 'package:ecommerce/presentation/tab/bloc/tab_bloc.dart';
import 'package:ecommerce/presentation/tab/tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AppView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Flutter Demo',
      home: BlocProvider<TabBloc>(
        create: (context) => TabBloc(),
        child: TabScreen(),
      ),
    );
    // MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //   home: BlocProvider<TabBloc>(
    //     create: (context) => TabBloc(),
    //     child: HomeScreen(),
    //   ),
    // );
  }
}
