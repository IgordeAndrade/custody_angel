import 'package:custody_angel/models/biblia_api.dart';
import 'package:custody_angel/repositories/biblia_repository.dart';
import 'package:get/get.dart';

class BibliaController extends GetxController {
  final BibliaRepository repository;
  BibliaController(this.repository);

  List<Livros> bibliaList = <Livros>[].obs;

  fetch() async {
    await repository.getList().then((value) {
      bibliaList = value;
    });
  }
}
