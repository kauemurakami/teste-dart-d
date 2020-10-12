import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:teste_dart_digital/app/data/provider/app_api.dart';
import 'package:teste_dart_digital/app/data/repository/git_repos_repository.dart';
import 'package:teste_dart_digital/app/modules/auth/auth_service.dart';
import 'package:teste_dart_digital/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(
        userRepository: GitReposRepository(
            apiClient: MyProvider(httpClient: http.Client()))));
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
