import 'package:feuto/componets/home.dart';
import 'package:flutter/material.dart';
import 'package:feuto/main.dart';

import '../home.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueGrey,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> new HomePage()));},
          child: Text('FEUTO'),),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          new IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            color: Colors.black45,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.product_detail_picture,
                ),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\u{20B9}${widget.product_detail_new_price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),

                      // Expanded(child:
                      // new Text("\u{20B9}${widget.product_detail_old_price}",
                      //   style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),
                      // ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ---------- the first buttons ----------
          Row(
            children: <Widget>[
              // ---------- the size button 1 -----------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.blueGrey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // ---------- the size button 2 -----------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Colors"),
                            content: new Text("Choose the Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.blueGrey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Colors")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // ---------- the size button 3 -----------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Number of Items"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.blueGrey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ---------- the Second buttons ----------

          Row(
            children: <Widget>[
              // ---------- the size button 1 -----------
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now"),
                ),
              ),
              new IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.orangeAccent,
              ),
              new IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                color: Colors.purpleAccent,
              ),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("This is the best product in market at current time."
                "\nTop noch Quality."
                "\nLooks fancy.", style: TextStyle(color: Colors.blueGrey),),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text ("Product name", style: TextStyle(color: Colors.black),),
              ),
              Padding(padding: EdgeInsets.all(5.0), child: new Text(widget.product_detail_name),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text ("Product Brand", style: TextStyle(color: Colors.black),),
              ),

              // -----------------> Remember to create product brand <------------------
              Padding(padding: EdgeInsets.all(5.0), child: new Text("FEUTO"),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text ("Product Condition", style: TextStyle(color: Colors.black)),
              ),

              // -----------> Remember to create product brand <----------------------
              Padding(padding: EdgeInsets.all(5.0), child: new Text("New Arrival",),
              ),
            ],
          ),
          Divider(),
          new Text("Similar Products"),
          // Similar Product Searching
          Container(
            height: 360.0,
            child: Similar_productState(),
          )

        ],
      ),
    );
  }
}
class Similar_productState extends StatefulWidget {
  @override
  State<Similar_productState> createState() => _Similar_productStateState();
}

class _Similar_productStateState extends State<Similar_productState> {
  @override
  var product_list = [
    {
      "name": "ASHIRWAD ATTA",
      "picture": "assets/ASHIRWAD.jpg",
      "old price": "240",
      "price": "239",
    },
    {
      "name": "FORTUNE ATTA",
      "picture": "assets/FORTUNE_ATTA.jpg",
      "old price": "200",
      "price": "180",
    },
    {
      "name": "BESAN",
      "picture": "assets/BESAN.jpg",
      "old price": "60",
      "price": "50",
    },
    {
      "name": "BROWN RICE,5 KG",
      "picture": "assets/RICE_1.jpg",
      "old price": "639",
      "price": "639",
    },
    {
      "name": "BASMATI RICE",
      "picture": "assets/RICE_2.jpg",
      "old price": "135",
      "price": "100",
    },
    {
      "name": "CASHEW,200 GM",
      "picture": "assets/CASHEW.jpg",
      "old price": "300",
      "price": "250",
    },
    {
      "name": "CASHEW,250 GM",
      "picture": "assets/KAJU.jpg",
      "old price": "300",
      "price": "280",
    },
    {
      "name": "ALMOND,250 GM",
      "picture": "assets/ALMOND.jpg",
      "old price": "280",
      "price": "250",
    },
    {
      "name": "RAISINS,1 KG",
      "picture": "assets/KISMIS.jpg",
      "old price": "400",
      "price": "400",
    },
    {
      "name": "BLACK RAISINS,1 KG",
      "picture": "assets/BLACK_KISMIS.jpg",
      "old price": "600",
      "price": "600",
    },
    {
      "name": "MIXNUTS,250 GM",
      "picture": "assets/HEALTHY.jpg",
      "old price": "500",
      "price": "450",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                // Here we are passing the values to the product to the product detail page
                builder: (context) => new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ),
              ),
            ),



            // ------------> Product Price ki detailing <---------------------
            child: GridTile(
              footer: Container(
                  color: Colors.white,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          prod_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                      new Text(
                        '\u{20B9}${prod_price}',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}