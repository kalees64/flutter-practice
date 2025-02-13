import 'package:first_flutter_app/src/common/widgets/customHeadings.dart';
import 'package:first_flutter_app/src/common/widgets/productCardWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VK64",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "VK64",
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
              ...List.generate(
                5,
                (index) => productCard(name: "Product ${index + 1}"),
              ),
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
