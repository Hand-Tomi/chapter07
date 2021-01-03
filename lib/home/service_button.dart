import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String title;
  ServiceButton({@required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$title 클릭');
      },
      child: Column(
        children: [
          Icon(
            Icons.local_taxi,
            size: 40,
          ),
          Text('$title'),
        ],
      ),
    );
  }
}
