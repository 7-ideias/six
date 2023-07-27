import 'dart:convert';

import 'package:http/http.dart' as http;

  const String baseUrl = 'http://0.0.0.0:8080/v1/produtosList3';
  // const String baseUrl = 'https://sixbackend-b481b809b7d4.herokuapp.com/v1/produtosList3';
  // const String baseUrl = 'http://0.0.0.0:8080/v1/';
  // const String baseUrl = 'https://jsonplaceholder.typicode.com/todos/1';

class BaseClient {

  var client = http.Client();

  //GET
  Future<dynamic> get (String api) async {
    var url = Uri.parse(baseUrl + api);
    print('url.: '+ baseUrl + api);

    var _headers = {
      'id_cliente' : '12345',
      'Content-Type' : 'application/json'
    };

    var response;

    try{
    response = await client.get(url, headers: _headers);

    }catch(e){
      print("Ocorreu uma exceção: $e");
    }


    if(response.statusCode == 200){
      print(json.decode(response.body));
      return response.body;
    }
    else{
      // throw exception
    }

  }
  Future<dynamic> post (String api) async {}
  Future<dynamic> put (String api) async {}
  Future<dynamic> delete (String api) async {}
}