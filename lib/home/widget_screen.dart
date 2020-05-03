import 'package:covid_tracker/bloc/config/config_bloc.dart';
import 'package:covid_tracker/bloc/config/config_state.dart';
import 'package:covid_tracker/uinversal/uinversal_scaffold.dart';
import 'package:flutter/material.dart';
class WidgetScreen extends StatelessWidget {
  final String routeName = "/country";
  @override
  Widget build(BuildContext context) {
   var configBloc = ConfigBloc();
   var stateData = configBloc.state as InConfigState;
   var data = stateData.dataModel.countries;

    return UniversalScaffold(
      
      title: "Countries Data on Covid-19",
       body: ListView.builder(
         itemCount: data.length ,
         itemBuilder: (context,int index){
          return ListTile(
          title: Column(
           mainAxisSize: MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             Text(data[index].country),
             Text("New Comfirmed Cases: ${data[index].newConfirmed}"),
             Text("Total Comfirmed Cases: ${data[index].totalConfirmed}"),
             Text("New Death Cases: ${data[index].newDeaths}"),
             Text("Total Death Cases: ${data[index].totalDeaths}"),
             Text("New Recovered Cases: ${data[index].newRecovered}"),
             Text("Total Recovered Cases: ${data[index].totalRecovered}")
           ],
        
          ),
          leading: CircleAvatar(
            child: 
              Text(data[index].country.substring(0,3)),
              radius: 30.0,   
          ), 
          );
         }
         ),
      
      );
    
  }
}