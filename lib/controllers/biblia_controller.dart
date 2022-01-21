import 'package:custody_angel/models/biblia_api.dart';
import 'package:custody_angel/repositories/biblia_repository.dart';
import 'package:get/get.dart';

class BibliaController extends GetxController {
  final BibliaRepository repository;
  BibliaController(this.repository);

  List<BibliaApiModel> bibliaList = <BibliaApiModel>[].obs;

  fetch() async {
    bibliaList = await repository.getList();
  }
}
