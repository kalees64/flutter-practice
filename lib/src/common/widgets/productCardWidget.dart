import 'package:flutter/material.dart';

Widget productCard() {
  return Row(
    children: [
      Expanded(
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(5)),
          child: Row(
            spacing: 8,
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 75,
                height: 75,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2)),
                child: Placeholder(
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  // height: 75,
                  // color: Colors.red,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(4),
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product 1",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
