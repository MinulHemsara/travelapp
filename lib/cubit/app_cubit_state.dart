import 'package:equatable/equatable.dart';
import 'package:travelapp/model/data_model.dart';
import 'package:travelapp/page/navpages/home_page.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  // late int x;
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  // LoadedState(this.places);
  // final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class DetailState extends CubitStates {
  DetailState(this.place);
  final DataModel place;
  @override
  // TODO: implement props
  List<Object> get props => [place];
}