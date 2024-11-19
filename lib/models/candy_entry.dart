// To parse this JSON data, do
//
//     final candyEntry = candyEntryFromJson(jsonString);

import 'dart:convert';

List<CandyEntry> candyEntryFromJson(String str) => List<CandyEntry>.from(json.decode(str).map((x) => CandyEntry.fromJson(x)));

String candyEntryToJson(List<CandyEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CandyEntry {
    String model;
    String pk;
    Fields fields;

    CandyEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory CandyEntry.fromJson(Map<String, dynamic> json) => CandyEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    int price;
    int sweetness;
    String description;
    int user;

    Fields({
        required this.name,
        required this.price,
        required this.sweetness,
        required this.description,
        required this.user,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        price: json["price"],
        sweetness: json["sweetness"],
        description: json["description"],
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "sweetness": sweetness,
        "description": description,
        "user": user,
    };
}
