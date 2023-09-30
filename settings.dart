import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings Page'),
        ),
        body: Center(
          child: SettingsPage(),
        ),
      ),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;
  String selectedValue = 'Option 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Theme Settings:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          MySwitchListTile(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Notification Settings: ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
         
          DropdownButton<String>(
            value: selectedValue,
            items: [
              DropdownMenuItem(
                value: 'Option 1',
                child: Text('Never'),
              ),
              DropdownMenuItem(
                value: 'Option 2',
                child: Text('Daily'),
              ),
              DropdownMenuItem(
                value: 'Option 3',
                child: Text('Weekly'),
              ),
            ],
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
          ),
          
        ],
      ),
    );
  }
}

class MySwitchListTile extends StatefulWidget {
  @override
  _MySwitchListTileState createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text('Dark Mode'),
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
