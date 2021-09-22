import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class LocalStorage extends StatefulWidget {
  const LocalStorage({Key key}) : super(key: key);

  @override
  _LocalStorageState createState() => _LocalStorageState();
}

class _LocalStorageState extends State<LocalStorage> {
  final _controllerKey = TextEditingController();
  final _controllerData = TextEditingController();

  static String textToShow = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Storage Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(.0),
            child: TextField(
              controller: _controllerData,
              decoration: InputDecoration(hintText: 'Enter data'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(width: 1, color: Colors.black12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                  ),
                  child: Text(
                    'Save Data',
                    style: new TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  onPressed: () {
                    saveData(_controllerKey.text, _controllerData.text);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(width: 1, color: Colors.black12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                  ),
                  child: Text(
                    'Read Data',
                    style: new TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  onPressed: () {
                    readData(
                      _controllerKey.text,
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '$textToShow',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void saveData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);

    // Fluttertoast.showToast(msg: 'Sved Data', toastLength: Toast.LENGTH_SHORT);
  }

  void readData(String text) async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      textToShow = prefs.getString(text);
    });
  }
}
