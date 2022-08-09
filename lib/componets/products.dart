import 'package:flutter/material.dart';
import 'package:feuto/componets/product_details.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // Grouping different things together

  // -----------> Recent Product Pictures <------------------

  // photo per right click -> copy path and refernce -> Path from content root

  var product_list = [
    // {
    //   "name": "Oreo Biscuit",
    //   "picture": "assets/feuto_4.jpg",
    //   "old price": "65",
    //   "price": "65",
    // },
    // {
    //   "name": "marie Gold Biscuit",
    //   "picture": "assets/feuto_5.jpg",
    //   "old price": "35",
    //   "price": "35",
    // },
    // {
    //   "name": "Parle-G",
    //   "picture": "assets/feuto_6.jpg",
    //   "old price": "70",
    //   "price": "70",
    // },
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
      "name": "Amul Ghee 1 litre",
      "picture": "assets/feuto_8.jpg",
      "old price": "65",
      "price": "65",
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
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
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