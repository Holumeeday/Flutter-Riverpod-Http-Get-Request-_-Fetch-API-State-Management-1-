import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../model/usermodel.dart';

class ApiServices{
  String endpoint = 'https://postman-echo.com';

 Future<List<UserModel>> getUsers() async{
    Response  response = await http.get(Uri.parse(endpoint));

    if(response.statusCode == 200){
      final List result = jsonDecode(response.body);
      return result.map((e) => UserModel.fromJson(e)).toList();
    }else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final userProvider = Provider<ApiServices>((ref)=>ApiServices());