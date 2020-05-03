import 'package:covid_tracker/bloc/config/confic_index.dart';
import 'package:covid_tracker/bloc/config/config_bloc.dart';
import 'package:covid_tracker/bloc/config/config_state.dart';
import 'package:covid_tracker/home/widget_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
 var configBloc = ConfigBloc();
  HomeScreen({this.configBloc});
  @override
  Widget build(BuildContext context) {
    var stateData = configBloc.state as InConfigState;
    var data =  stateData.dataModel.global;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child:Column(
        children: <Widget>[
              ListTile( 
               title: Center(
                 child: Text("Global Data",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 30.0,
                 ),
                 ),
               )
              ),
          Expanded(
            child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    children: <Widget>[

                      Card( child: Center(
                        child: ListTile(
                              title: Text("New ConfirmedCases",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text("${data.newConfirmed}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24.0,
                              ),
                              ),
                          ),
                      ),
                        color: Colors.blueAccent,
                        elevation:9.0,
                      ),
                      Card( child: Center(
                        child: ListTile(
                              title: Text("Total ConfirmedCases",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text("${data.totalConfirmed}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24.0,
                              ),
                              ),
                          ),
                      ),
                        color: Colors.pinkAccent,
                        elevation:9.0,
                      ),Card( child: Center(
                        child: ListTile(
                              title: Text("New Deaths",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text("${data.newDeaths}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24.0,
                              ),
                              ),
                          ),
                      ),
                        color: Colors.redAccent,
                        elevation:9.0,
                      ),Card( child: Center(
                        child: ListTile(
                              title: Text("Total Deaths",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text("${data.totalDeaths}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24.0,
                              ),
                              ),
                          ),
                      ),
                        color: Colors.blue,
                        elevation:9.0,
                      ),Card( child: Center(
                        child: ListTile(
                              title: Text("New Recovered",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text("${data.newRecovered}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24.0,
                              ),
                              ),
                          ),
                      ),
                        color: Colors.teal,
                        elevation:9.0,
                      ),Card( child: Center(
                        child: ListTile(
                              title: Text("Total Recovered",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                              subtitle: Text("${data.totalRecovered}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 24.0,
                              ),
                              ),
                          ),
                      ),
                        color: Colors.green,
                        elevation:9.0,
                        
                      ),
                     
                    ],
                    
            ),
          ),
          Padding(padding:  EdgeInsets.only(top: 3.0) ),
                     RaisedButton(

                        child: Text("View Detailed Data",
                        style:TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600
                        )
                        ),
                       onPressed:(){
                         Navigator.push(context, MaterialPageRoute<WidgetScreen>(
                           builder: (context){
                             return WidgetScreen();
                           }

                           ));
                       }
                       
                       )
        ],
      )
    );
  }
}