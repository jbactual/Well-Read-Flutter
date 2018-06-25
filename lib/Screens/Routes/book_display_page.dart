import 'package:well_read/Modal/all_books.dart';
import 'package:well_read/Utils/rating_bar.dart';
import 'package:flutter/material.dart';

class BookDisplayPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final Book book;

  BookDisplayPage(this.book);

  @override
  Widget build(BuildContext context) {

    final String bookDescription = book.description;
    //app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text('Book Details'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {_scaffoldKey.currentState.showSnackBar(const SnackBar(
              content: const Text("You clicked Shopping Cart!")
          ));},
        )
      ],
    );

    // Variable for Top Container, top-left flex view
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.indigo.shade900,
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text('${book.pages} pages', isBold: true, color: Colors.white, size: 13)
      ],
    );

    // Variable for Top Container, top-right flex view
    final topRight = Center(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            text(book.title,
                color: Colors.white, size: 16, isBold: true, padding: EdgeInsets.only(left: 12.0, top: 12.0)),
            text(
              'by ${book.writer}',
              color: Colors.white,
              size: 12,
              padding: EdgeInsets.only(left: 12.0, top: 8.0, bottom: 16.0),
            ),
            Row(
              children: <Widget>[
                text(
                  book.price,
                  color: Colors.white,
                  isBold: true,
                  padding: EdgeInsets.only(left: 12.0, right: 8.0, bottom: 0.0),
                ),
                RatingBar(rating: book.rating),
              ],
            ),
            new Container(
              child: Center(child: new Text('Sale: Save 50%', style: TextStyle(color: Colors.yellow, fontSize: 16.0, fontWeight: FontWeight.bold),)),
              padding: EdgeInsets.only(top: 32.0),
            ),
            SizedBox(height: 27.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ButtonBar(
//                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: const Text('Favorite', style: TextStyle(color: Colors.white),),
                      color: Colors.blue,
                      onPressed: () {_scaffoldKey.currentState.showSnackBar(const SnackBar(
                          content: const Text("You clicked Favorites!")
                      ));},
                    ),
                  ],
                ),
                new ButtonBar(
//                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: const Text('Buy Now', style: TextStyle(color: Colors.white),),
                      color: Colors.blue,
                      onPressed: () {_scaffoldKey.currentState.showSnackBar(const SnackBar(
                          content: const Text("You clicked Buy Now!")
                      ));},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );

    // Top Content --> Creates a two part container using Flex and allows you to split the page
    // into two different containers.
    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 4, child: topRight),
        ],
      ),
    );

    // Bottom Content --> Creates a ScrollView which allows you to scroll through the description
    final bottomContent = Container(
      height: 300.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(12.0),
        child: Text(
          'Description: $bookDescription',
          style: TextStyle(fontSize: 14.0),
        ),
      ),
    );

    // <Widget>[top, bottom] allows for two different page displays
    // each display is built using a final variable to allow reading the code easier.
    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  //Text Widget --> Allows you to call 'text' in the build tree and
  // sets various style options.
  text(String data,
      {Color color = Colors.white,
        num size = 14,
        EdgeInsetsGeometry padding = EdgeInsets.zero,
        bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );

}



