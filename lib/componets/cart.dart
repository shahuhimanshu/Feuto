import 'package:flutter/material.dart';

// My import
import 'package:feuto/componets/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.blueGrey,
        title: Text('cart', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text('\u{20B9}${919}'),
            )),
            Expanded(child: new MaterialButton(onPressed: (){},
              child: new Text("check out",style: TextStyle(color: Colors.white),),
              color: Colors.blueGrey,),
            )
          ],
        ),
      ),
    );
  }
}