import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meta/meta.dart';
import 'package:teste_dart_digital/app/data/model/repositorio_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final gitRepository;
  HomeController({@required this.gitRepository})
      : assert(gitRepository != null);

  @override
  void onInit() {
    getAllRepositories();
    super.onInit();
  }

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  final searchResults = List<GitRepository>().obs;
  set searchResults(value) => this.searchResults.value = value;

  final repositorios = List<GitRepository>().obs;
  set repositorios(value) => this.repositorios.value = value;

  onChangedFiltro(value) {
    searchResults.clear();
    if (value.length > 3) {
      repositorios.forEach((repo) {
        if (repo.name.contains(value)) {
          searchResults.add(repo);
        } else {
          getAllRepositories();
          return;
        }
        repositorios = searchResults;
      });
    } else {
      return;
    }
  }

  onSavedFiltro(value) => '';
  validateFiltro(value) => '';

  getAllRepositories() async {
    await gitRepository.getAll().then((data) => repositorios = data);
  }
}
