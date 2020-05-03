import 'dart:convert';
import 'package:http/http.dart' as http;
import 'data_model.dart';
abstract class DataRespository{
 Future <DataModel>fetchData();

}

class BlocRepository implements DataRespository {
  String url = "https://api.covid19api.com/summary";
  @override
  Future <DataModel> fetchData() async {
   
    
    var response = await http.get(url);
   if(response.statusCode == 200){
   var data  = jsonDecode(response.body);

   DataModel dataModel = DataModel.fromJson(data);
   return dataModel;
  
    //return 
    
   
   // return  data["Countries"].forEach((v)=>DataModel.fromJson(v));
   }
   // return  //DataModel.fromJson(data["Countries"]).countries.toList();
   else throw Exception();
  }
}