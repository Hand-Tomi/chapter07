import 'package:chapter07/home/middle_item.dart';
import 'package:flutter/material.dart';

import 'middle_slider.dart';
import 'service_button.dart';
import 'top_grid_view.dart';

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
    return TopGridView(
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

  Widget _buildMiddle() {
    return MiddleSlider(
      items: dummyItems.map((url) => MiddleItem(url: url)).toList(),
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
