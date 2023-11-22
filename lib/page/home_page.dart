import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFAFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(title: "Persegi", imageAssets: "assets/persegi.png")),
              Expanded(child: CustomMenu(title: "Persegi Panjang", imageAssets: "assets/persegipanjang.png")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(title: "Segitiga", imageAssets: "assets/lingkaran.jpg")),
              Expanded(child: CustomMenu(title: "Trapesium", imageAssets: "assets/trapesium.png")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(title: "Lingkaran", imageAssets: "assets/lingkaran.jpg")),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
   CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.symmetric(
        horizontal: 16, vertical: 8
      ),
        padding: EdgeInsets.symmetric(
        horizontal: 16, vertical: 8
      ),
    decoration: BoxDecoration(
        color: Colors.green.shade400,
    ),
    child: Column(
      children: [
        Image.asset(imageAssets),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
      ],
    ));
  }
}
