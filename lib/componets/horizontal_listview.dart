// Categories me jo display karna hai wo sab

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          // Categories ke photos yaha dalna hai
          Category(image_location: 'assets/Atta_1.jpg', image_caption: 'ATTA',),
          Category(image_location: 'assets/Oil__ghee.jpg', image_caption: 'OIL GHEE',),
          Category(image_location: 'assets/Dal_pulses__spices.jpg', image_caption: 'PULSES',),
          Category(image_location: 'assets/Biscuits__snacks.jpg', image_caption: 'SNACKS',),
          Category(image_location: 'assets/Beverages.jpg', image_caption: 'Beverages',),
          Category(image_location: 'assets/Householdcleanerscopy.jpg', image_caption: 'CLEANERS',),
          Category(image_location: 'assets/Laundry_essentials.jpg', image_caption: 'Laundry',),
          Category(image_location: 'assets/Bath__shower.jpg', image_caption: 'HYGINE',),

        ],
      ),
    );
  }
}


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    required this.image_location,
    required this.image_caption
  });


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption,),
            ),
          ),
        ),
      ),
    );
  }
}