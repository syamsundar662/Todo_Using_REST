import 'dart:convert';
import 'package:todo/model/model.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class Api{
 static const api = 'http://api.nstack.in/v1/todos';

Future<List<TodoModel>> getTodo()async{
  final response = await http.get(Uri.parse(api));
  if(response.statusCode == 200){
    final data = jsonDecode(response.body)['items'] as List;
    return data.map((e) => TodoModel.fromJson(e)).toList();
  } else{
    throw Exception('Error');
  }
 
}

Future<void> postTodo(String title,String description) async{
  final body ={
"title" :title,
"description" : description
  };
 final response = await http.post(Uri.parse(api),body: body);
 if(response.statusCode == 201){
  // ignore: avoid_print
  print('success');
 }else{
  throw Exception('error');
 }
}
            
}