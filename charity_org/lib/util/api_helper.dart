
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'exceptions.dart';

class ApiBase{
  
final String _baseUrl = "http://api.ourorg/";
  
Future<dynamic> get(String url) async {
    var responseJson;  
    try {
      final response = await http.get(Uri.parse(_baseUrl + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
}

Future<dynamic> post(String url, dynamic object) async{
   var responseJson;
  try{
    final response = await http.post(Uri.parse(_baseUrl + url), body: jsonEncode(object));
    responseJson = _returnResponse(response);
  } on SocketException {
    throw FetchDataException('No internet connection');
  }
  return responseJson;
}

Future<dynamic> put(String url , ) async{
  var responseJson;
  try{
    final response = await http.put(Uri.parse(_baseUrl + url), body: jsonEncode(json));
    responseJson = _returnResponse(response);
  } on SocketException {
    throw FetchDataException('No internet connection');
  }
  return responseJson;
}


dynamic _returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      var responseJson = json.decode(response.body.toString());
      print(responseJson);
      return responseJson;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
  
}
}