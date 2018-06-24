import 'package:flutter/material.dart';
import 'package:well_read/Screens/PageView/home_page.dart';
import 'package:well_read/Screens/PageView/action_page.dart';
import 'package:well_read/Screens/PageView/history_page.dart';
import 'package:well_read/Screens/PageView/horror_page.dart';
import 'package:well_read/Screens/PageView/mystery_page.dart';
import 'package:well_read/Screens/PageView/sciencefiction_page.dart';

import 'package:well_read/Modal/history_books.dart';

String kAsset0 = 'images/photo_female_7.jpg';

class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => new _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> with TickerProviderStateMixin {
  // This allows app to display snackbar messages at the bottom of the screen.
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // Variables used to enable search query icon at the top right.
  final TextEditingController _searchQuery = new TextEditingController();
  bool _isSearching = false;

  // Variables used to setup drawer tiles.
  // _drawerContents are the link names
  // _drawerControllerID maintains the current page and allows app to switch between pages.
  static const List<String> _drawerContents = const <String>['All Books','Action', 'History', 'Horror', 'Mystery', 'Science Fiction'];
  static const List<int> _drawerControllerID = const <int>[0,1, 2, 3, 4, 5];

  // This is used to control the drawer animation
  AnimationController _controller;
  Animation<double> _drawerContentsOpacity;
  Animation<Offset> _drawerDetailsPosition;
  bool _showDrawerContents = true;

  /// This controller can be used to programmatically
  /// set the current displayed page ** Scaffold body: element **
  PageController _pageController;

  final Book book = books[1];
//  final String bookTitle;
//  final bookTitle = book.title;


  @override
  void initState() {
    super.initState();
    // Initialize controllers and animations for Drawer Navigation Menu
    _pageController = new PageController();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _drawerContentsOpacity = new CurvedAnimation(
      parent: new ReverseAnimation(_controller),
      curve: Curves.fastOutSlowIn,
    );
    _drawerDetailsPosition = new Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(new CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Executed once search icon is clicked, sets _isSearching to true
  // which enables buildSearchBar() to be called
  // Doesnt actually search through all books.
  void _handleSearchBegin() {
    ModalRoute.of(context).addLocalHistoryEntry(new LocalHistoryEntry(
      onRemove: () {
        setState(() {
          _isSearching = false;
          _searchQuery.clear();
        });
      },
    ));
    setState(() {
      _isSearching = true;
    });
  }

  // This builds Search Bar at the top of the screen once
  Widget buildSearchBar() {
    return new AppBar(
      leading: new BackButton(
        color: Theme.of(context).accentColor,
      ),
      title: new TextField(
        controller: _searchQuery,
        autofocus: true,
        decoration: const InputDecoration(
          hintText: 'Search Books',
        ),
      ),
      backgroundColor: Theme.of(context).canvasColor,
    );
  }

  Widget buildAppBar(){
    return new AppBar(
      leading: new IconButton(
        icon: new Icon(Icons.menu),
        tooltip: 'Menu',
        onPressed: () {
          _scaffoldKey.currentState.openDrawer();
        },
      ),
      title: new Image.asset('images/title.png', alignment: Alignment.centerLeft),
      actions: <Widget>[
        new IconButton(
          icon: const Icon(Icons.search),
          onPressed: _handleSearchBegin,
          tooltip: 'Search Books',
        ),
        new IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {_scaffoldKey.currentState.showSnackBar(const SnackBar(
              content: const Text("You clicked Shopping Cart!")
          ));},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: _isSearching ? buildSearchBar() : buildAppBar(),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: const Text('Elizabeth Lee'),
              accountEmail: const Text('Elizabeth.Lee@example.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage(kAsset0),
                radius: 85.0,
              ),
              margin: EdgeInsets.zero,
              onDetailsPressed: () {
                _showDrawerContents = !_showDrawerContents;
                if (_showDrawerContents)
                  _controller.reverse();
                else
                  _controller.forward();
              },
            ),
            new MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: new Expanded(
                child: new ListView(
                  padding: const EdgeInsets.only(top: 8.0),
                  children: <Widget>[
                    new Stack(
                      children: <Widget>[
                        new FadeTransition(
                          opacity: _drawerContentsOpacity,
                          child: new Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: _drawerControllerID.map((int id) {
                              return new ListTile(
                                leading: new IconButton(
                                  icon: new Icon(Icons.bookmark_border), onPressed: () {navigationTapped(id);},
                                ),
                                title: new Text(_drawerContents[id]),
                                onTap: () {navigationTapped(id);},
                              );
                            }).toList(),
                          ),
                        ),
                        // The drawer's "details" view.
                        new SlideTransition(
                          position: _drawerDetailsPosition,
                          child: new FadeTransition(
                            opacity: new ReverseAnimation(_drawerContentsOpacity),
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                new ListTile(
                                  leading: const Icon(Icons.settings),
                                  title: const Text('Settings'),
                                  onTap: () { _handleShowSettings(context); },
                                ),
                                new ListTile(
                                  leading: const Icon(Icons.add),
                                  title: const Text('Sign Up Page'),
                                  onTap: () { Navigator.pushNamed(context, '/SignUp'); },
                                ),
                                new ListTile(
                                  leading: const Icon(Icons.settings),
                                  title: const Text('Login Page'),
                                  onTap: () { Navigator.pushNamed(context, '/Login'); },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // PageView utilizes the _pageController in order to call and animate
      // to next page. The _pageController is also called in the navigationTapped() method
      // which animates to the page you want.
      body: new PageView(
          children: [
            new HomePage(),
            new ActionPage(),
            new HistoryPage(),
            new HorrorPage(),
            new MysteryPage(),
            new ScienceFictionPage(),
          ],
          controller: _pageController,
      ),
    );
  } // Build Widget


  void _handleShowSettings(BuildContext context) {
    // This utilizes a non-param route to push '/Settings' to the navigation stack
    // Revert back to main() in order to visualize the process.
    Navigator.pushNamed(context, '/Settings');
  }

  // Called when the user presses on of the [Drawer] with corresponding page index
  void navigationTapped(int page){
    // Animates to the page. You can use whatever duration and curve you like
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 100),
        curve: Curves.ease
    );

    // Closes Drawer Navigation Menu after selecting an item
    Navigator.of(context).pop();
  }

} // Class
