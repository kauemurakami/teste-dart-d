import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:teste_dart_digital/app/data/model/error_model.dart';
import 'package:teste_dart_digital/app/data/model/repositorio_model.dart';
import 'dart:convert';

const baseUrl = 'https://api.github.com/repositories';

class MyProvider {
  final http.Client httpClient;
  MyProvider({@required this.httpClient});

  getAllRepositories() async {
    try {
      var response = await httpClient.get(
        '$baseUrl',
      );
      if (response.statusCode == 200) {
        print(response.statusCode.toString());
        print(response.body);
        return gitRepositoryFromJson(response.body);
      }
    } catch (e) {}
  }
}
