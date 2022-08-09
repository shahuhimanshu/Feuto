import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_the_cart = [
    {
      "name": "RAISINS",
      "picture": "assets/KISMIS.jpg",
      "price": "400",
      "size": "1 KG",
      "color": "GREEN",
      "Quantity": 1,
    },
    {
      "name": "ASHIRWAD ATTA",
      "picture": "assets/ASHIRWAD.jpg",
      "price": "239",
      "size": "5 KG",
      "color": "",
      "Quantity": 2,
    },
    {
      "name": "CASHEW",
      "picture": "assets/KAJU.jpg",
      "price": "280",
      "size": "250 GM",
      "color": "WHITE",
      "Quantity": 1,
    },



    // {
    //   "name": "Pink T-Shirt",
    //   "picture": "assets/pink_tshirt.jpg",
    //   "price": "999",
    //   "size": "M",
    //   "color": "Pink",
    //   "Quantity": 1,
    // },
    // {
    //   "name": "Shoes",
    //   "picture": "assets/shoe1.jpg",
    //   "price": "899",
    //   "size": "10UK",
    //   "color": "Italian Blue",
    //   "Quantity": 1,
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Product_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: Product_on_the_cart[index]["name"],
          cart_prod_picture: Product_on_the_cart[index]["picture"],
          cart_prod_price: Product_on_the_cart[index]["price"],
          cart_prod_size: Product_on_the_cart[index]["size"],
          cart_prod_color: Product_on_the_cart[index]["color"],
          cart_prod_Quantity: Product_on_the_cart[index]["Quantity"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_Quantity;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_Quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //-------------------> Leading Section <----------------------------
        leading: new Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),

        //--------------------> Title Section <-----------------------------

        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            // Row inside Column
            new Row(
              // this section is for the size of the product

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("size"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                // ------------> This section is for the product color <-----------------------

                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),

            // ---------------------> This section is for the product price <------------------------

            // new Text('\u{20B9}${cart_prod_price}'),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                '\u{20B9}${cart_prod_price}',
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
          ],
        ),

        // trailing: new Column(
        //   children: <Widget>[
        // new IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){},),
        // new Text("1"),
        // new IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){},),
        //   ],
        // ),
      ),
    );
  }
}