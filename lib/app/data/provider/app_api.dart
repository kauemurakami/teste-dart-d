import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:teste_dart_digital/app/data/model/repositorio_model.dart';

const baseUrl = 'https://api.github.com/repositories';

class MyProvider {
  final http.Client httpClient;
  MyProvider({@required this.httpClient});

  getAllRepositories() async {
    var response = await httpClient.get(
      '$baseUrl',
    );
    if (response.statusCode == 200) {
      print(response.statusCode.toString());
      print(response.body);
      return gitRepositoryFromJson(response.body);
    } else {
      throw Exception('Ocorreu um erro ao recuperar os dados');
    }
  }
}
