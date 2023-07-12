import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travelapp/model/data_model.dart';

class DataServices {
  final baseUrl =Uri.https("travelapp-d834e-default-rtdb.firebaseio.com",'travel.json');
 Future<List<DataModel>> getInfo() async{
   http.Response res = await http.get(baseUrl);
   try{
     if(res.statusCode==200){
       List<dynamic> list = json.decode(res.body);
       print(list);
       return list.map((e) => DataModel.fromJson(e)).toList();
     }else{
       return <DataModel>[];
     }
   }catch(e){
     print(e);
     return <DataModel>[];
   }
  }
}