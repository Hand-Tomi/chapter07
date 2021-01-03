import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'service_button.dart';

final dummyItems = [
  'https://cdn.pixabay.com/photo/2013/07/25/13/01/stones-167089_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/09/16/16/09/sea-2755908_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_1280.jpg',
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  // 상단
  Widget _buildTop() {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      shrinkWrap: true,
      crossAxisCount: 4,
      children: [
        ServiceButton(
          title: '택시',
        ),
        ServiceButton(
          title: '택시',
        ),
        ServiceButton(
          title: '택시',
        ),
        ServiceButton(
          title: '택시',
        ),
        ServiceButton(
          title: '택시',
        ),
        ServiceButton(
          title: '택시',
        ),
        ServiceButton(
          title: '택시',
        ),
      ],
    );
  }

  // 중단
  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: true,
      ),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  // 하단
  Widget _buildBottom() {
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 이것은 공지사항입니다'),
      );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
