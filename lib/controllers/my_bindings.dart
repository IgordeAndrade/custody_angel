import 'package:custody_angel/repositories/biblia_repository_mock.dart';
import 'package:get/get.dart';

import 'biblia_controller.dart';

class MyPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BibliaController>(
      () => BibliaController(
        BibliaRepositoryMock(),
      ),
    );
  }
}
