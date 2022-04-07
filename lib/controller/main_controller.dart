import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/utils.dart';

class MainController extends GetxController {
  var mobile = GetPlatform.isMobile;
  var desktop = GetPlatform.isDesktop;
}
