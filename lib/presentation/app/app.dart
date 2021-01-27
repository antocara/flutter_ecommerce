import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_view.dart';

class App extends StatelessWidget {
  // const App({
  //   Key key,
  //   @required this.authenticationRepository,
  //   @required this.fetchUserUC,
  // })  : assert(authenticationRepository != null),
  //       assert(fetchUserUC != null),
  //       super(key: key);

  // final AuthenticationRepository authenticationRepository;
  // final FetchUserUC fetchUserUC;

  @override
  Widget build(BuildContext context) {
    return AppView();
    // return RepositoryProvider.value(
    //   value: authenticationRepository,
    //   child: BlocProvider(
    //     create: (_) => AuthenticationBloc(
    //       authenticationRepository: authenticationRepository,
    //       fetchUserUC: fetchUserUC,
    //     ),
    //     child: AppView(),
    //   ),
    // );
  }
}