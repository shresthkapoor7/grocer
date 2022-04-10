import 'package:flutter/material.dart';

class botnavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(bottom: 6.0),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 0.2)),
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            botnavicon(
              Icon(
                Icons.store,
                size: 25,
                color: Colors.green,
              ),
              'Shop',
              Colors.green,
            ),
            botnavicon(
              Icon(
                Icons.manage_search,
                size: 25,
                color: Colors.black,
              ),
              'Explore',
              Colors.black,
            ),
            botnavicon(
              Icon(
                Icons.shopping_cart_outlined,
                size: 25,
                color: Colors.black,
              ),
              'Cart',
              Colors.black,
            ),
            botnavicon(
              Icon(
                Icons.favorite_border,
                size: 25,
                color: Colors.black,
              ),
              'Favourite',
              Colors.black,
            ),
            botnavicon(
              Icon(
                Icons.person_outline,
                size: 25,
                color: Colors.black,
              ),
              'Account',
              Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class botnavicon extends StatelessWidget {
  Icon a;
  String t;
  Color c;
  botnavicon(this.a, this.t, this.c);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 10),
      child: Container(
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => NewPage()),
                // );
              },
              icon: a,
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
            ),
            Text(
              t,
              style: TextStyle(
                  fontSize: 13, color: c, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
