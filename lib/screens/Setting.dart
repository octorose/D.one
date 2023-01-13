import 'package:flutter/material.dart';

class SetteingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(181, 215, 243, 1),
      body: Container(
        margin: EdgeInsets.only(top: 100.0, left: 10.0, right: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.shopping_cart),
                ),
                title: Text('Shopping'),
                subtitle: Text('Buy products online'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Do something when the ListTile is tapped
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
