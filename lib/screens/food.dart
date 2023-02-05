import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/yum.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  TextEditingController editingController = TextEditingController();
  Yum yum = Yum.fromJson(
    {
      "restaurant": "Chipotle",
      "foodItems": [
        {
          "foodName": "Chicken Burrito",
          "foodType": "Burrito",
          "protein": "chicken",
          "calories": 975
        },
        {
          "foodName": "Steak Burrito",
          "foodType": "Burrito",
          "protein": "steak",
          "calories": 945
        },
        {
          "foodName": "Carnitas Burrito",
          "foodType": "Burrito",
          "protein": "carnitas",
          "calories": 1005
        },
        {
          "foodName": "Barbacoa Burrito",
          "foodType": "Burrito",
          "protein": "barbacoa",
          "calories": 965
        },
        {
          "foodName": "Chorizo Burrito",
          "foodType": "Burrito",
          "protein": "chorizo",
          "calories": 1095
        },
        {
          "foodName": "Sofritas Burrito",
          "foodType": "Burrito",
          "protein": "sofritas",
          "calories": 945
        },
        {
          "foodName": "Chicken Burrito Bowl",
          "foodType": "Burrito Bowl",
          "calories": 630
        },
        {"foodName": "Chicken Bowl", "calories": 630},
        {
          "foodName": "Steak Burrito Bowl",
          "foodType": "Burrito Bowl",
          "calories": 600
        },
        {"foodName": "Steak Bowl", "calories": 600},
        {
          "foodName": "Carnitas Burrito Bowl",
          "foodType": "Burrito Bowl",
          "calories": 660
        },
        {"foodName": "Carnitas Bowl", "calories": 660},
        {
          "foodName": "Barbacoa Burrito Bowl",
          "foodType": "Burrito Bowl",
          "calories": 620
        },
        {"foodName": "Barbacoa Bowl", "calories": 620},
        {
          "foodName": "Chorizo Burrito Bowl",
          "foodType": "Burrito Bowl",
          "calories": 750
        },
        {"foodName": "Chorizo Bowl", "calories": 750},
        {
          "foodName": "Sofritas Burrito Bowl",
          "foodType": "Burrito Bowl",
          "calories": 600
        },
        {"foodName": "Sofritas Bowl", "calories": 600},
        {
          "foodName": "Chicken Corn Tortilla Taco",
          "foodType": "Taco",
          "protein": "chicken",
          "calories": 650
        },
        {
          "foodName": "Chicken Flour Tortilla Taco",
          "foodType": "Taco",
          "protein": "chicken",
          "calories": 700
        },
        {
          "foodName": "Steak Corn Tortilla Taco",
          "foodType": "Taco",
          "protein": "steak",
          "calories": 620
        },
        {
          "foodName": "Steak Flour Tortilla Taco",
          "foodType": "Taco",
          "protein": "steak",
          "calories": 670
        },
        {
          "foodName": "Carnitas Corn Tortilla Taco",
          "foodType": "Taco",
          "protein": "carnitas",
          "calories": 680
        },
        {
          "foodName": "Carnitas Flour Tortilla Taco",
          "foodType": "Taco",
          "protein": "carnitas",
          "calories": 730
        },
        {
          "foodName": "Barbacoa Corn Tortilla Taco",
          "foodType": "Taco",
          "protein": "barbacoa",
          "calories": 640
        },
        {
          "foodName": "Barbacoa Flour Tortilla Taco",
          "foodType": "Taco",
          "protein": "barbacoa",
          "calories": 690
        },
        {
          "foodName": "Chorizo Corn Tortilla Taco",
          "foodType": "Taco",
          "protein": "chorizo",
          "calories": 770
        },
        {
          "foodName": "Chorizo Flour Tortilla Taco",
          "foodType": "Taco",
          "protein": "chorizo",
          "calories": 820
        },
        {
          "foodName": "Sofritas Corn Tortilla Taco",
          "foodType": "Taco",
          "protein": "sofritas",
          "calories": 620
        },
        {
          "foodName": "Sofritas Flour Tortilla Taco",
          "foodType": "Taco",
          "protein": "sofritas",
          "calories": 670
        },
        {
          "foodName": "Chicken Salad",
          "calories": 345,
          "foodType": "Salad",
          "sideItem": true,
          "dressingItem": true
        },
        {
          "foodName": "Steak Salad",
          "calories": 315,
          "foodType": "Salad",
          "sideItem": true,
          "dressingItem": true
        },
        {
          "foodName": "Carnitas Salad",
          "calories": 375,
          "foodType": "Salad",
          "sideItem": true,
          "dressingItem": true
        },
        {
          "foodName": "Barbacoa Salad",
          "calories": 335,
          "foodType": "Salad",
          "sideItem": true,
          "dressingItem": true
        },
        {
          "foodName": "Chorizo Salad",
          "calories": 465,
          "foodType": "Salad",
          "sideItem": true,
          "dressingItem": true
        },
        {
          "foodName": "Chicken Quesadilla",
          "calories": 610,
          "foodType": "Quesadilla"
        },
        {
          "foodName": "Steak Quesadilla",
          "calories": 550,
          "foodType": "Quesadilla"
        },
        {
          "foodName": "Carnitas Quesadilla",
          "calories": 640,
          "foodType": "Quesadilla"
        },
        {
          "foodName": "Cheese Quesadilla",
          "calories": 430,
          "foodType": "Quesadilla"
        },
        {"foodName": "Kids Chicken Taco", "calories": 205},
        {"foodName": "Kids Steak Taco", "calories": 200},
        {"foodName": "Chips", "calories": 540, "sideItem": true},
        {"foodName": "Chips and Salsa", "calories": 570, "sideItem": true},
        {"foodName": "Chips and Guacamole", "calories": 770, "sideItem": true},
        {"foodName": "Chips and Queso", "calories": 770, "sideItem": true}
      ]
    },
  );
  List FoodItems = [];
  @override
  Widget build(BuildContext context) {
    var searchQuery = new TextEditingController();

    void updateSearchQuery(String newQuery) {
      setState(() {
        FoodItems = yum.foodItems!
            .where((element) => element.foodName!
                .toLowerCase()
                .contains(newQuery.toLowerCase()))
            .toList();
      });
    }

    var length = FoodItems!.length;
    void initState() {
      super.initState();

      // Start listening to changes.
      editingController
          .addListener((() => updateSearchQuery(editingController.text)));
    }

    @override
    void dispose() {
      // Clean up the controller when the widget is removed from the widget tree.
      // This also removes the _printLatestValue listener.
      editingController.dispose();
      super.dispose();
    }

    // ignore: unnecessary_new
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
              child: Column(
                children: [
                  Text(
                    "What are you craving?",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color.fromARGB(255, 34, 80, 133)),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    onChanged: ((value) {
                      updateSearchQuery(value);
                      print(FoodItems!.length.toString() + "lwala");
                    }),
                    controller: editingController,
                    decoration: InputDecoration(
                        labelText: "Search",
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)))),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: FoodItems.length == 0
                        ? Center(
                            child: Text(
                              "Search for a food",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  color: Color.fromARGB(255, 34, 80, 133)),
                            ),
                          )
                        : ListView.builder(
                            itemCount: FoodItems.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(FoodItems[index].foodName),
                                subtitle:
                                    Text(FoodItems[index].calories.toString()),
                              );
                            }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
