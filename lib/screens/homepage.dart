import 'package:flutter/material.dart';

import 'botnavbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8, right: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'yourgrocer',
                      style: TextStyle(
                          color: Colors.green.shade600,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                  color: Colors.green.shade600,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(Icons.room),
                                Text(
                                  'Brooklyn Home',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //TODO:
              Whole('Exclusive Order'),
              Whole('Best Selling'),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText('Groceries'),
                    Text(
                      'See All',
                      style:
                          TextStyle(fontSize: 18, color: Colors.green.shade600),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Groceries(),
                    Groceries(),
                    Groceries(),
                    Groceries(),
                    Groceries(),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Item('Soya Original',
                        'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
                    Item('Raspberry Driscolls',
                        'https://driscolls.imgix.net/-/media/images/pages/finest-berries/raspberries/modal/conventional.ashx'),
                    Item('Soya Original',
                        'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
                    Item('Soya Original',
                        'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
                    Item('Soya Original',
                        'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
                    Item('Soya Original',
                        'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
                    Item('Soya Original',
                        'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: botnavbar(),
    );
  }
}

class Groceries extends StatelessWidget {
  //const Groceries({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 0.5),
            color: Colors.green.shade200),
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                height: 40,
                image: NetworkImage(
                    'https://goqii.com/blog/wp-content/uploads/Why-Pulses-Are-Good-For-You.jpg')),
            Text('Pulses'),
          ],
        ),
      ),
    );
  }
}

class Whole extends StatelessWidget {
  String t;
  Whole(this.t);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(t),
              Text(
                'See All',
                style: TextStyle(fontSize: 18, color: Colors.green.shade600),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Item('Soya Original',
                  'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
              Item('Raspberry Driscolls',
                  'https://driscolls.imgix.net/-/media/images/pages/finest-berries/raspberries/modal/conventional.ashx'),
              Item('Soya Original',
                  'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
              Item('Soya Original',
                  'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
              Item('Soya Original',
                  'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
              Item('Soya Original',
                  'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
              Item('Soya Original',
                  'https://m.media-amazon.com/images/I/71bv-3YBwwL._SL1500_.jpg'),
            ],
          ),
        ),
      ],
    ));
  }
}

class Item extends StatelessWidget {
  String url;
  String t;
  Item(this.t, this.url);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => NewPage()),
        // );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey, width: 0.5),
              color: Colors.white),
          height: 180,
          width: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(height: 80, image: NetworkImage(url)),
              SizedBox(
                height: 10,
              ),
              Text(
                t,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('10.99'),
                    Icon(Icons.add),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BigText extends StatelessWidget {
  final String t;
  BigText(this.t);
  @override
  Widget build(BuildContext context) {
    return Text(
      t,
      style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 25,
          fontWeight: FontWeight.w500),
    );
  }
}
