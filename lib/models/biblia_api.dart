class BibliaModel {
  List<Livros>? livros;

  BibliaModel({this.livros});

  BibliaModel.fromJson(Map<String, dynamic> json) {
    if (json['livros'] != null) {
      livros = <Livros>[];
      json['livros'].forEach((v) {
        livros!.add(Livros.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (livros != null) {
      data['livros'] = livros!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Livros {
  String? titulo;
  List<Conteudo>? conteudo;

  Livros({this.titulo, this.conteudo});

  Livros.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    if (json['Conteudo'] != null) {
      conteudo = <Conteudo>[];
      json['Conteudo'].forEach((v) {
        conteudo!.add(Conteudo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['titulo'] = titulo;
    if (conteudo != null) {
      data['Conteudo'] = conteudo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Conteudo {
  int? capitulo;
  List<Conteudo>? conteudo;

  Conteudo({this.capitulo, this.conteudo});

  Conteudo.fromJson(Map<String, dynamic> json) {
    capitulo = json['Capitulo'];
    if (json['Conteudo'] != null) {
      conteudo = <Conteudo>[];
      json['Conteudo'].forEach((v) {
        conteudo!.add(Conteudo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Capitulo'] = capitulo;
    if (conteudo != null) {
      data['Conteudo'] = conteudo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ConteudoVer {
  int? versiculo;
  String? text;

  ConteudoVer({this.versiculo, this.text});

  ConteudoVer.fromJson(Map<String, dynamic> json) {
    versiculo = json['Versiculo'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Versiculo'] = versiculo;
    data['text'] = text;
    return data;
  }
}
