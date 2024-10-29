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
    return Container(
      color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Promoções até',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.red,
                child: Text(
                  '  40% OFF  ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CarouselView(
              itemSnapping: true,
              itemExtent: 195,
              children: [
                Image.network(
                  listViewItems[0],
                ),
                Image.network(
                  listViewItems[1],
                ),
                Image.network(
                  listViewItems[2],
                ),
                Image.network(
                  listViewItems[3],
                ),
                Image.network(
                  listViewItems[4],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  elevation: 3,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
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
      ),
    );
  }
}
