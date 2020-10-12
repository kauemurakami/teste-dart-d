import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;
import 'package:teste_dart_digital/app/data/provider/app_api.dart';
import 'package:teste_dart_digital/app/data/repository/git_repos_repository.dart';
import 'package:teste_dart_digital/app/modules/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(
        gitRepository: GitReposRepository(
            apiClient: MyProvider(httpClient: http.Client()))));
  }
}
