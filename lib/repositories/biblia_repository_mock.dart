import 'dart:convert';
import 'package:custody_angel/models/biblia_api.dart';
import 'package:flutter/services.dart';

import 'biblia_repository.dart';

class BibliaRepositoryMock implements BibliaRepository {
  @override
  Future<List<Livros>> getList() async {
    var value = await rootBundle.loadString('assets/api/biblia/biblia.json');
    List bibliaJson = jsonDecode(value);
    return bibliaJson.map((e) => Livros.fromJson(e)).toList();
  }
}
