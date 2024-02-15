import 'package:flutter/foundation.dart';

class DataModel {
   int? id;
   String? title;
   String? description;
   double? price;
   String? category;
   String? image;
  // final Map<String, dynamic>? rating;

  DataModel({
     this.id,
     this.title,
     this.description,
     this.price,
     this.category,
     this.image,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      category: json['category'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'category': category,
      'image': image
    };
  }
}
