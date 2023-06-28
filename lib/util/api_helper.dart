import 'dart:convert';
import 'dart:io';
import 'package:charity_org/util/exceptions.dart';
import 'package:charity_org/util/simplified_uri.dart';
import 'package:http/http.dart' as http;
import 'local_storage.dart';

class ApiBase {
  final String? token = Prefs().token;
  final String _baseUrl = "http://139.59.96.46/api/";
  late Map<String, String> globalHeaders = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer $token"
  };

  Future<dynamic> get(
      {String? url, dynamic queryParameters, String? fullUrl}) async {
    var responseJson;
    final Uri uri = SimplifiedUri.uri(
        (fullUrl == null) ? _baseUrl + url! : fullUrl, queryParameters);
    try {
      final response = await http.get(uri, headers: globalHeaders);
      print(response.body);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(
      {required String url, dynamic body, bool containHeaders = true}) async {
    var responseJson;
    final headers = globalHeaders;
    headers.remove("Content-Type");
    try {
      final response = await http.post(Uri.parse(_baseUrl + url),
          body: body, headers: containHeaders ? headers : null);
      print(response.body);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic body) async {
    var responseJson;
    try {
      final response = await http.put(Uri.parse(_baseUrl + url),
          body: body, headers: globalHeaders);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  Future<dynamic> delete({required String url, dynamic body}) async {
    var responseJson;
    try {
      final response = await http.delete(Uri.parse(_baseUrl + url),
          body: body, headers: globalHeaders);
      print(response.body);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  Future<dynamic> patch({required String url, dynamic body}) async {
    var responseJson;
    final headers = globalHeaders;
    headers.remove("Content-Type");
    print(headers);
    try {
      final response = await http.patch(Uri.parse(_baseUrl + url),
          body: body, headers: headers);
      print(response.body);
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
