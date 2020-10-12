import 'package:meta/meta.dart';
import 'package:teste_dart_digital/app/data/provider/app_api.dart';

class GitReposRepository {
  final MyProvider apiClient;

  GitReposRepository({@required this.apiClient}) : assert(apiClient != null);
}
