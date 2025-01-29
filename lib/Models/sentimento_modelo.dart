class SentimentoModelo {
  String id;
  String fells;
  String data;

  SentimentoModelo({required this.id, required this.fells, required this.data});

  SentimentoModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        fells = map["fells"],
        data = map["data"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "fells": fells,
      "data": data,
    };
  }
}
