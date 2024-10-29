import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List listViewItems = [
      'https://imgnike-a.akamaihd.net/250x250/0294300L.jpg',
      'https://imgnike-a.akamaihd.net/250x250/029489IF.jpg',
      'https://imgnike-a.akamaihd.net/250x250/029489NX.jpg',
      'https://imgnike-a.akamaihd.net/250x250/009351II.jpg',
      'https://imgnike-a.akamaihd.net/360x360/01371852A8.jpg',
    ];
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CarouselView(
            itemSnapping: true,
            itemExtent: 195,
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.red,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                elevation: 3,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(
                      color: Colors.grey.shade200,
                    )),
                child: Image.network(
                  height: MediaQuery.of(context).size.height / 4,
                  listViewItems[index],
                ),
              );
            },
            itemCount: listViewItems.length,
          ),
        )
      ],
    );
  }
}
