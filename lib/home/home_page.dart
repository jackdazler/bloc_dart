import 'package:covid_tracker/bloc/config/confic_index.dart';
import 'package:covid_tracker/bloc/config/config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_front.dart';
class HomePage extends StatelessWidget {
var configBloc = ConfigBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid-19 Tracker",
      home: BlocProvider(
        create: (context)=> configBloc..add(LoadConfigEvent()),
        child: HomeFront(configBloc: configBloc,),
        ),
    );
  }
}