class DataModel {
  String? id;
  String? title;
  String? description;
  List<dynamic>? properties;
  String? category;
  int? roomcount;
  int? bathroomcount;
  int? guestcount;
  int? price;

  DataModel(
      {required this.id,
      required this.bathroomcount,
      required this.category,
      required this.description,
      required this.guestcount,
      required this.price,
      required this.properties,
      required this.roomcount,
      required this.title});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json["_id"],
        bathroomcount: json["bathroomCount"],
        category: json["category"],
        description: json["description"],
        guestcount: json["guestCount"],
        price: json["price"],
        properties: json["properties"],
        roomcount: json["roomCount"],
        title: json["title"]);
  }
}
