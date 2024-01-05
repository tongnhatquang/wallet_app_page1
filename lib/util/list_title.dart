import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget{

  final String iconImagePath;
  final String titleTitle;
  final String titleSubTitle;

  const MyListTitle ({
    super.key,
    required this.iconImagePath,
    required this.titleTitle,
    required this.titleSubTitle,
  });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //icon
              Container(
                height: 80,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(iconImagePath),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    titleSubTitle,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}