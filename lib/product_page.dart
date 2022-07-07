import 'package:aas_0076/detail.dart';
import 'package:aas_0076/login_page.dart';
import 'package:aas_0076/style.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductPage extends StatelessWidget {
  final String apiUrl = "https://dummyjson.com/products";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['products'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color.fromRGBO(242, 102, 100, 1),
        title: Text('List Product'),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20, top: 5),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              icon: Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/bg1.png'), fit: BoxFit.cover),
        ),
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(7),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                      margin: EdgeInsets.all(7),
                      child: ListTile(
                        leading: Image.network(
                          snapshot.data[index]['thumbnail'],
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          snapshot.data[index]['title'],
                          style: titleFont,
                        ),
                        subtitle: Text(
                          snapshot.data[index]['category'],
                          style: catFont,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage(index),
                                  settings: RouteSettings(
                                    arguments: snapshot.data[index],
                                  )));
                        },
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
