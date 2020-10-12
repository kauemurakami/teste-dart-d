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

  final repositorios = List<GitRepository>().obs;
  set repositorios(value) => this.repositorios.value = value;

  filtro() {}

  onChangedFiltro(value) {
    if (value.length > 3) {
      //filtrar lista
    } else {}
  }

  onSavedFiltro(value) => '';
  validateFiltro(value) => '';

  getAllRepositories() async {
    await gitRepository.getAll().then((data) => repositorios = data);
    print(repositorios[0].id);
  }
}
