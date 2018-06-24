/**************************************************************************
* Name: Flutter Application - Well Read
*
* Description: Well Read is a general template for a flutter application and is a great
* way to learn how the flutter framework is utilized in order to build
* both android and ios mobile applications. I tried to keep everyting organized.
* I documented most of the application which should give you a better
* understanding of how everything works.
*
* Basic order of build:
*  1. Main() --> LayoutPage() --> HomePage()    --> BookDisplayPage()
*                             --> ActionPage()  --> BookDisplayPage()
*                             --> HistoryPage() --> BookDisplayPage()
*                             --> HorrorPage()  --> BookDisplayPage()
*                             --> MysteryPage() --> BookDisplayPage()
*                             --> SciFiPage()   --> BookDisplayPage()
*                             --> SettingsPage()
*                             --> LoginPage()
*                             --> SignUpPage()
*
* Features:
*   1. Main()
*     a. Utilizes Non-parameter routes
*     b. Utilizes Parameter routes
*     c. Utilizes Themes
*
*   2. LayoutPage()
*     a. Builds appBar with icons
*     b. Search window
*     c. Builds Drawer Navigation Menu with multiple routes
*     d. Utilizes a PageView which calls and animates to other pages
*     e. Utilizes Snackbars
*
*   3. HomePage()
*     a. Utilizes a modal with an array of all books
*     b. Creates CustomScrollView with a SliverGrid
*     c. Displays new Hero Tiles with various books.
*
*   4. Each Book Category (Action, History, Horror, Mystery, SciFi)
*     a. Utilizes the same tools as HomePage() but displays different books
*     b. Not as documented due to them being the same as HomePage()
*
*   5. BookDisplayPage()
*     a. 2 Part Widget with a top and bottom page
*     b. Top Page utilizes a flex view in order to seperate two different containers
*     c. Bottom Page utilizes a scroll view enabling you to scroll through the description
*     d. Two buttons with Snackbar display
*
*   6. Login() and SignUp() Page
*     a. Utilizes TextFields for user input
*     b. Button to call for validation
*
*   7. SettingsPage()
*     a. Displays basic user settings and allows for you to input your own settings.
*
*   8. Modal Folder
*     a. Maintains all dummy data
*
*   9. Images Folder
*     a. Maintains all image files
*
*   10. pubspec.yaml
*     a. Allows you to import other assets. All image files you add must be included here
*        or you'll get an error. Unless you pull from an API.
*
*
*  Basic Installation Process:
*        1. Install VS-Code or Android Studio
*          a. I prefer Android Studio as it allows access to extra features
*             such as Flutter Outline and Inspector.
*
*        2. Install Flutter https://flutter.io/get-started/install/
*
*       3. Run 'flutter doctor' to ensure everything is installed correctly and you have a
*          working emulator connected.
*
*       4. Once everything is working properly open the project and run one of the following commands:
*          b. 'flutter clean' --> This cleans the /build folder if flutter starts displaying old versions
 *             of your application. Doesnt hurt to run this frequently before 'flutter run'
*          c. 'flutter run' --> This runs the flutter project.
*
*
*      You Should be good to go. I created this project to be super simple and easy to understand. This project is
*      more than just a bookstore template. This project is a great learning tool and will help teach you the
*      flutter framework. It utilizes param and non param routes, PageViews and various other features I described
*      above. If you have any questions about the application itself, please ask. This is my first application on
*      CodeCanyon and would appreciate some stars if you like my work. If I get good feedback,
*      I'll build some more. Thanks again.
*
*
*
***************************************************************************/

import 'package:flutter/material.dart';
import 'package:well_read/Screens/layout_page.dart';
import 'package:well_read/Screens/Routes/book_display_page.dart';
import 'package:well_read/Modal/all_books.dart';
import 'package:well_read/Screens/Routes/settings_page.dart';
import 'package:well_read/Screens/Routes/login_page.dart';
import 'package:well_read/Screens/Routes/sign_up_page.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  // Routes call another page without taking in any object or variable.
  // routes are defaulted when no object is present. Otherwise it goes to onGenerateRoute()
  var routes = <String, WidgetBuilder>{
    "/SignUp": (BuildContext context) => new SignUpScreen(),
    "/Login": (BuildContext context) => new LoginScreen(),
    "/Settings": (BuildContext context) => new WellReadSettings(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Well Read',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
        platform: TargetPlatform.iOS,
      ),
      home: LayoutPage(),
      onGenerateRoute: (settings) => generateRoute(settings),
      routes: routes,
    );
  }

  // generateRoute --> generates a param route which allows you to pass
  // a list item. This is called with Navigator.pushNamed(context, 'details/book.title')
  generateRoute(RouteSettings settings) {

    // The path --> 'details/book.title' is split and title is passed into a
    // variable in order to get from list and pass to details_page
    final path = settings.name.split('/');
    final title = path[1];

    // Gets titled object and sends to details_page
    Book titledBook = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => BookDisplayPage(titledBook),
    );
  }
}

