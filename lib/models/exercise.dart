class Exercise {
  String? name;
  List<Muscles>? muscles;

  Exercise({this.name, this.muscles});

  Exercise.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['muscles'] != null) {
      muscles = <Muscles>[];
      json['muscles'].forEach((v) {
        muscles!.add(Muscles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (muscles != null) {
      data['muscles'] = muscles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Muscles {
  String? name;
  int? percentage;

  Muscles({this.name, this.percentage});

  Muscles.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['percentage'] = percentage;
    return data;
  }
}