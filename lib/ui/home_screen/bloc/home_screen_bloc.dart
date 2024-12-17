import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/data/respository/repository.dart';
import 'package:flutter_application_1/ui/home_screen/bloc/home_screen_event.dart';

import 'home_screen_event.dart';
import 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState()) {
    on<GetListApiEvent>(_callGetListApi);
  }
  final Repository repository = Repository();
  FutureOr<void> _callGetListApi(
      GetListApiEvent event, Emitter<HomeScreenState> emit) async {
    try {
      var response = await repository.movieGetAPI();
      emit(state.copyWith(movieList: response));
    } catch (error) {
      print(error);
    }
  }
}
