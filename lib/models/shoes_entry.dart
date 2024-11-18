// To parse this JSON data, do
//
//     final shoesEntry = shoesEntryFromJson(jsonString);

import 'dart:convert';

List<ShoesEntry> shoesEntryFromJson(String str) => List<ShoesEntry>.from(json.decode(str).map((x) => ShoesEntry.fromJson(x)));

String shoesEntryToJson(List<ShoesEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShoesEntry {
    Model model;
    String pk;
    Fields fields;

    ShoesEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ShoesEntry.fromJson(Map<String, dynamic> json) => ShoesEntry(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    String color;
    String condition;
    int releaseYear;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.color,
        required this.condition,
        required this.releaseYear,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        color: json["color"],
        condition: json["condition"],
        releaseYear: json["release_year"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "color": color,
        "condition": condition,
        "release_year": releaseYear,
    };
}

enum Model {
    MAIN_SHOESENTRY
}

final modelValues = EnumValues({
    "main.shoesentry": Model.MAIN_SHOESENTRY
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
