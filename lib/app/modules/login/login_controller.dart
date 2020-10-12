import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meta/meta.dart';

class LoginController extends GetxController {
  final userRepository;

  LoginController({@required this.userRepository})
      : assert(userRepository != null);
}
