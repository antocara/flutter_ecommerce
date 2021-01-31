
import 'package:ecommerce/presentation/tab/event/tab_event.dart';
import 'package:ecommerce/presentation/tab/state/tab_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBloc extends Bloc<TabEvent, TabState> {
  TabBloc() : super(TabState.home);

  @override
  Stream<TabState> mapEventToState(TabEvent event) async* {
    if (event is TabUpdated) {
      yield event.tab;
    }
  }
}