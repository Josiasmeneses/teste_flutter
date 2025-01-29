class ExercicioModelo {
  String id;
  String name;
  String hwMake;
  String traine;
  String? urlImage;

  ExercicioModelo(
      {required this.id,
      required this.name,
      required this.traine,
      required this.hwMake});

  ExercicioModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        traine = map["traine"],
        hwMake = map["hwMake"],
        urlImage = map["urlImage"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "traine": traine,
      "hwMake": hwMake,
      "urlImage": urlImage,
    };
  }
}
