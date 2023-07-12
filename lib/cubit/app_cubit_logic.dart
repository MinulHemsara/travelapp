import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/app_cubit_state.dart';
import 'package:travelapp/cubit/app_cubits.dart';
import 'package:travelapp/page/detail_page.dart';
import 'package:travelapp/page/navpages/home_page.dart';
import 'package:travelapp/page/navpages/main_page.dart';
import 'package:travelapp/page/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (ctx, state) {
        if (state is DetailState) {
          return DetailPage();
        }
        if (state is WelcomeState) {
          return WelcomePage();
        } if (state is LoadedState) {
          return MainPage();
        } else if (state is LoadingState) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Container();
        }
      }),
    );
  }
}
