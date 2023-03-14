import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifiedPage extends StatelessWidget {
  final String label;
  const NotifiedPage({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Get.isDarkMode ? Colors.grey[600] : Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios, color: Get.isDarkMode?Colors.white:Colors.black,),
        ),
        title: Text(this.label.toString().split("|")[0], style: TextStyle(color: Get.isDarkMode?Colors.white:Colors.black),),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Get.isDarkMode?Colors.white:Colors.grey[600]
          ),
          child: Center(
            child: Text(this.label.toString().split("|")[1], style: TextStyle(color: Get.isDarkMode?Colors.black:Colors.white,
            fontSize: 30
            ),),
          ),
        ),
      ),
    );
  }
}
