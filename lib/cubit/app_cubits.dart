import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelapp/model/data_model.dart';
import 'package:travelapp/page/navpages/home_page.dart';
import 'package:travelapp/services/data_services.dart';

import 'app_cubit_state.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState());
    } catch (e) {

    }
  }

  detailPage(DataModel data){
    emit(DetailState(data));
  }
  goHome(){
    emit(LoadedState());
  }
}
