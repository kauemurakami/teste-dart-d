import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final gitRepository;
  HomeController({@required this.gitRepository})
      : assert(gitRepository != null);
}
