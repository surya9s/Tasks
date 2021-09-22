import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List userData;
  List Data;
  Future<List> getData() async {
    String myUrl = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http
        .get(Uri.parse(myUrl), headers: {'Accept': 'application/json'});
    Data = jsonDecode(response.body);
    setState(() {
      userData = Data;
    });
    print('my data is : $Data');
    return userData;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
      body: userData == null
          ? Container()
          : Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                  itemCount: userData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          //width: mWidth * 0.70,
                          padding: const EdgeInsets.only(top: 10.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Text('user-id:'),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(userData[index]['userId']
                                            .toString()),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('id:'),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            userData[index]['id'].toString()),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('title:'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        userData[index]['title'].toString()),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('body:'),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        userData[index]['body'].toString()),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              height: 10,
                            )),
                      ],
                    );
                  }),
            ),
    );
  }
}
