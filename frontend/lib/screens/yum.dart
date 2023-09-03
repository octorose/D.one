class Yum {
  String? restaurant;
  List<FoodItems>? foodItems;

  Yum({this.restaurant, this.foodItems});

  Yum.fromJson(Map<String, dynamic> json) {
    restaurant = json['restaurant'];
    if (json['foodItems'] != null) {
      foodItems = <FoodItems>[];
      json['foodItems'].forEach((v) {
        foodItems!.add(new FoodItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurant'] = this.restaurant;
    if (this.foodItems != null) {
      data['foodItems'] = this.foodItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FoodItems {
  String? foodName;
  String? foodType;
  String? protein;
  int? calories;
  bool? sideItem;
  bool? dressingItem;

  FoodItems(
      {this.foodName,
      this.foodType,
      this.protein,
      this.calories,
      this.sideItem,
      this.dressingItem});

  FoodItems.fromJson(Map<String, dynamic> json) {
    foodName = json['foodName'];
    foodType = json['foodType'];
    protein = json['protein'];
    calories = json['calories'];
    sideItem = json['sideItem'];
    dressingItem = json['dressingItem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foodName'] = this.foodName;
    data['foodType'] = this.foodType;
    data['protein'] = this.protein;
    data['calories'] = this.calories;
    data['sideItem'] = this.sideItem;
    data['dressingItem'] = this.dressingItem;
    return data;
  }
}

