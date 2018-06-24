import 'package:flutter/material.dart';

class WellReadSettings extends StatefulWidget {
  @override
  WellReadSettingsState createState() => new WellReadSettingsState();
}

class WellReadSettingsState extends State<WellReadSettings> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _checkboxValue = false;


  void _showNotImplementedMessage() {
    _scaffoldKey.currentState.showSnackBar(const SnackBar(
        content: const Text("The drawer's items don't do anything")
    ));
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(
        title: const Text('Settings')
    );
  }

  Widget buildSettingsPane(BuildContext context) {
    final List<Widget> rows = <Widget>[
      new ListTile(
        leading: const Icon(Icons.whatshot),
        title: const Text('Feature A'),
        trailing: new Checkbox(
          value: _checkboxValue,
          onChanged: (bool value) { onChanged(value);},
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Feature B'),
        onTap: () { _showNotImplementedMessage(); },
        trailing: new Switch(
          value: true,
          onChanged: (bool value) {
            setState(() {
              //You code here
            });
          },
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.account_balance),
        title: const Text('Feature C'),
        onTap: _showNotImplementedMessage,
        trailing: new Switch(
          value: true,
          onChanged: (bool value) {
            setState(() {
              //You code here
            });
          },
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.photo_size_select_actual),
        title: const Text('Feature D'),
        onTap: _showNotImplementedMessage,
        trailing: new Switch(
          value: true,
          onChanged: (bool value) {
            setState(() {
              //You code here
            });
          },
        ),
      ),
    ];
    return new ListView(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      children: rows,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: buildAppBar(context),
        body: buildSettingsPane(context)
    );
  }

  void onChanged(bool value) {

    setState(() {
      _checkboxValue = value;
    });
  }
}
