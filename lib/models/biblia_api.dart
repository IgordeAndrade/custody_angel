class BibliaApiModel {
  List<Genesis>? genesis;

  BibliaApiModel({this.genesis});

  BibliaApiModel.fromJson(Map<String, dynamic> json) {
    if (json['Genesis'] != null) {
      genesis = <Genesis>[];
      json['Genesis'].forEach((v) {
        genesis!.add(Genesis.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (genesis != null) {
      data['Genesis'] = genesis!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Genesis {
  int? capitulo;
  List<Conteudo>? conteudo;

  Genesis({this.capitulo, this.conteudo});

  Genesis.fromJson(Map<String, dynamic> json) {
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

class Conteudo {
  int? versiculo;
  String? text;

  Conteudo({this.versiculo, this.text});

  Conteudo.fromJson(Map<String, dynamic> json) {
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
