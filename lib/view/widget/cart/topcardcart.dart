import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';

class TopCardCart extends StatelessWidget {
  final String message ; 
  const TopCardCart({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.only(bottom: 5),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              // height: 20,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1.5)),
            ) ; 
  }
}