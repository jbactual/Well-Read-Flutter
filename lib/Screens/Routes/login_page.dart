import 'package:flutter/material.dart';
import 'package:well_read/Utils/Theme.dart' as Theme;
import 'package:well_read/Utils/text_button.dart';
import 'package:well_read/Utils/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  LoginScreenState createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  BuildContext context;
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ScrollController scrollController = new ScrollController();

  onPressed(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

  void _handleSubmitted() {
    final FormState form = formKey.currentState;
    if (!form.validate()) {
      showInSnackBar('Please fix the errors in red before submitting.');
    } else {
      form.save();
      Navigator.pushNamed(context, "/HomePage");
    }
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    final Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
        key: _scaffoldKey,
        body: new SingleChildScrollView(
        controller: scrollController,
        child: new Container(
          height: screenSize.height,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage('images/wellreadbackground.jpg'),
              fit: BoxFit.fill,
            ),
          ),// Check out old one for scroll view;
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Center(
                            child: new Image(
                              image: new AssetImage('images/logo.png'),
                              width: 250.0,
                              height: 200.0,
                            ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Form(
                          key: formKey,
                          child: new Column(
                            children: <Widget>[
                              new TextField(
                                style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white,),
                                  hintText: 'Username',
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),),
                                  icon: new Icon(Icons.person, color: Colors.white,)
                                ),
                              ),
                              new Container(
                                height: 20.0,
                              ),
                              new TextField(
                                style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white,),
                                  hintText: 'Password',
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),),
                                  icon: new Icon(Icons.email, color: Colors.white,),
                                ),
                              ),
                              new Container(
                                height: 20.0,
                              ),
                              new RoundedButton(
                                buttonName: "Sign In",
                                onTap: _handleSubmitted,
                                width: 200.0,
                                height: 50.0,
                                bottomMargin: 10.0,
                                borderWidth: 0.0,
                                buttonColor: Theme.Colors.appBarTitle,
                              ),
                            ],
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Center(
                              child: new TextButton(
                                  buttonName: "Create Account",
                                  onPressed: () => onPressed("/SignUp"),
                                  buttonTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
        ),
        ),
    );
  }
}
