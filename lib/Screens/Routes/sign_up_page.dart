import 'package:flutter/material.dart';
import 'package:well_read/Utils/Theme.dart' as Theme;
import 'package:well_read/Utils/text_button.dart';
import 'package:well_read/Utils/rounded_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  SignUpScreenState createState() => new SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _autovalidate = false;

  _onPressed() {
    print("button clicked");
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

  void _handleSubmitted() {
    final FormState form = _formKey.currentState;
    if (!form.validate()) {
      _autovalidate = true; // Start validating on every change.
      showInSnackBar('Please fix the errors in red before submitting.');
    } else {
      form.save();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //print(context.widget.toString());
    return new Scaffold(
        key: _scaffoldKey,
        body: new SingleChildScrollView(
          child: new Container(
            height: screenSize.height,
            padding: new EdgeInsets.all(16.0),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('images/wellreadbackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new SizedBox(
                    height: 160.0,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "CREATE ACCOUNT",
                          textAlign: TextAlign.center,
                          style: Theme.headingStyle,
                        )
                      ],
                    )),
                new Column(
                  children: <Widget>[
                    new Form(
                        key: _formKey,
                        autovalidate: _autovalidate,
                        //onWillPop: _warnUserAboutInvalidData,
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
                                  hintText: 'Email',
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),),
                                  icon: new Icon(Icons.email, color: Colors.white,)
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
                                  icon: new Icon(Icons.lock, color: Colors.white,)
                              ),
                            ),
                            new Container(
                              height: 20.0,
                            ),
                            new RoundedButton(
                              buttonName: "Sign Up",
                              onTap: _handleSubmitted,
                              width: 200.0,
                              height: 50.0,
                              bottomMargin: 10.0,
                              borderWidth: 0.0,
                              buttonColor: Theme.Colors.appBarTitle,
                            ),

                          ],
                        )),
                    new TextButton(
                      buttonName: "Terms & Condition", onPressed: _onPressed,buttonTextStyle: Theme.buttonTextStyle,)
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
