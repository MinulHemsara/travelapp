import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/app_cubit_logic.dart';
import 'package:travelapp/cubit/app_cubits.dart';
import 'package:travelapp/page/detail_page.dart';
import 'package:travelapp/page/navpages/home_page.dart';
import 'package:travelapp/page/navpages/main_page.dart';
import 'package:travelapp/page/welcome_page.dart';
import 'package:travelapp/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Travel App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: BlocProvider<AppCubits>(
          create: (ctx) => AppCubits(
            data: DataServices(),
          ),
          child: AppCubitLogics(),
        ));
  }
}
