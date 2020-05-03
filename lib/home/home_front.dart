
import 'package:covid_tracker/bloc/config/config_bloc.dart';
import 'package:covid_tracker/bloc/config/config_event.dart';
import 'package:covid_tracker/bloc/config/config_state.dart';
import 'package:covid_tracker/uinversal/uinversal_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_screen.dart';

class HomeFront extends StatelessWidget {
  var configBloc = ConfigBloc();

  HomeFront({this.configBloc});
  @override
  Widget build(BuildContext context) {
   //BlocProvider.of<ConfigBloc>(context).add(LoadConfigEvent());
    return UniversalScaffold(
        title: "Covid-19 Tracker",
        body: BlocBuilder<ConfigBloc, ConfigState>(builder: (context, state) {
          if (state is UnConfigState) {
            return Center(child: CircularProgressIndicator());
          }
          if(state is InConfigState){
            return HomeScreen(configBloc: configBloc,);
          }
          if(state is ErrorConfigState){
           return Center(
             child: FlatButton(
               onPressed: (){
                 BlocProvider.of<ConfigBloc>(context).add(LoadConfigEvent());
               },
                child:Text("${state.errorMessage}\n Press to reload"),
               )
           );
          }
        }));
  }
}

