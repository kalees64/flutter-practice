import 'package:flutter/material.dart';

Widget h1({required String text}) {
  return Text(
    text,
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  );
}

Widget h2({required String text}) {
  return Text(
    text,
    style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold),
  );
}

Widget h3({required String text}) {
  return Text(
    text,
    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  );
}

Widget h4({required String text}) {
  return Text(
    text,
    style: TextStyle(fontSize: 20.5, fontWeight: FontWeight.bold),
  );
}

Widget h5({required String text}) {
  return Text(
    text,
    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
  );
}
