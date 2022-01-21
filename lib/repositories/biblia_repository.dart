import 'package:custody_angel/models/biblia_api.dart';

abstract class BibliaRepository {
  Future<List<Livros>> getList();
}
