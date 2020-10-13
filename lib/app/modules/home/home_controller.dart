import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meta/meta.dart';
import 'package:get/get.dart';
import 'package:teste_dart_digital/app/data/model/repositorio_model.dart';

class HomeController extends GetxController {
  final gitRepository;
  HomeController({@required this.gitRepository})
      : assert(gitRepository != null);

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  final searchResults = List<GitRepository>().obs;

  final repositorios = List<GitRepository>().obs;
  set repositorios(value) => this.repositorios.value = value;

  @override
  void onInit() {
    getAllRepositories();
    super.onInit();
  }

  final _countList = 0.obs;
  get countList => this._countList.value;
  set countList(value) => this._countList.value = value;

  onChangedFiltro(value) {
    if (value.length > 3) {
      repositorios.forEach((repo) {
        if (repo.name.toLowerCase().contains(value.toLowerCase())) {
          searchResults.add(repo);
        }
        countList = searchResults.length;
        repositorios = searchResults;
      });
    }

    if (countList == 0) {
      this.message = 'Nenhum resultado encontrado';
    }

    if (value.length < 2) {
      this.message = '';
      searchResults.clear();
      getAllRepositories();
      countList = repositorios.length;
    }
  }

  getAllRepositories() async {
    await gitRepository.getAll().then((data) {
      repositorios = data;
      this.countList = repositorios.length;
    });
  }
}
