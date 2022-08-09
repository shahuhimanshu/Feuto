import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// my own imports
import 'package:feuto/componets/horizontal_listview.dart';
import 'package:feuto/componets/products.dart';
import 'package:feuto/componets/cart.dart';

import 'componets/home.dart';
import 'componets/login.dart';
import 'home.dart';
import 'login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginView(),
  ));runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     Widget image_carousel = Container(
//       height: 200.0,
//       child: Carousel(
//         boxFit: BoxFit.cover,
//         images: [
//           // Image.asset('assets/me.jpg'),
//           Image.asset('assets/feuto_7.jpg'),
//           Image.asset('assets/feuto_3.jpg'),
//           Image.asset('assets/feuto_9.jpg'),
//           // Image.asset('assets/feuto_2.jpg'),
//           // Image.asset('assets/grocery1.jpg'),
//           // Image.asset('assets/grocery2.jpg'),
//           // Image.asset('assets/grocery3.jpg'),
//           // Image.asset('assets/grocery4.jpg'),
//           Image.asset('assets/DRY_FRUITS.jpg'),
//         ],
//         autoplay: true,
//         animationCurve: Curves.fastOutSlowIn,
//         animationDuration: Duration(milliseconds: 1000),
//         dotSize: 5.0,
//         indicatorBgPadding: 2.0,
//         dotBgColor: Colors.transparent,
//       ),
//     );
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.5,
//         backgroundColor: Colors.blueGrey,
//         title: Text('FEUTO', style: TextStyle(fontWeight: FontWeight.bold),),
//
//         actions: <Widget>[
//           new IconButton(
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//               onPressed: () {}
//           ),
//           new IconButton(
//               icon: Icon(
//                 Icons.shopping_cart,
//                 color: Colors.white,
//               ),
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
//               }),
//         ],
//       ),
//       drawer: Drawer(
//         child: new ListView(
//           children: <Widget>[
//             new UserAccountsDrawerHeader(
//               accountName: Text('Parsh Choradia'),
//               accountEmail: Text('parshchoradia0902@gmail.com'),
//               currentAccountPicture: GestureDetector(
//                 child: new CircleAvatar(
//                   backgroundColor: Colors.grey,
//                   child: Icon(
//                     Icons.person,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               decoration: BoxDecoration(color: Colors.blueGrey),
//             ),
//             // Body
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('Home Page'),
//                 leading: Icon(Icons.home,color: Colors.black,),
//               ),
//             ),
//
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('My Account'),
//                 leading: Icon(Icons.person,color: Colors.black,),
//               ),
//             ),
//
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('My Orders'),
//                 leading: Icon(Icons.shopping_basket,color: Colors.black,),
//               ),
//             ),
//
//             InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
//               },
//               child: ListTile(
//                 title: Text('Shopping cart'),
//                 leading: Icon(Icons.shopping_cart,color: Colors.deepOrangeAccent,),
//               ),
//             ),
//
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('favorite'),
//                 leading: Icon(Icons.favorite,color: Colors.pinkAccent,),
//               ),
//             ),
//             Divider(),
//
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('Settings'),
//                 leading: Icon(Icons.settings,color: Colors.black,),
//               ),
//             ),
//
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text('About'),
//                 leading: Icon(Icons.help,color: Colors.black,),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: new ListView(
//         children: <Widget>[
//           // image coursel begin here
//           image_carousel,
//           // padding widget
//           new Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: new Text('Categories'),
//           ),
//
//           // horizontal list view begins here
//
//           HorizontalList(),
//
//           // Padding widget
//           new Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: new Text('Recent product'),
//           ),
//
//           // grid view
//           Container(
//             height: 320.0,
//             child: Products(),
//           )
//         ],
//       ),
//     );
//   }
// }