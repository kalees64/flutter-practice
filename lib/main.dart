import 'package:first_flutter_app/src/common/widgets/customHeadings.dart';
import 'package:first_flutter_app/src/common/widgets/productCardWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static String myName = "VK64";

  static List<Map<String, dynamic>> products = [
    {"id": 1, "name": "Product 1", "price": 10.0},
    {"id": 2, "name": "Product 22", "price": 15.0},
    {"id": 3, "name": "Product 3", "price": 20.0},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VK64",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            myName,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              h5(text: "Product Widgets"),
              ...products.map(
                  (product) => productCard(name: product["name"] as String))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: "Account"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            print("Index is $index");
          },
        ),
      ),
    );
  }
}
