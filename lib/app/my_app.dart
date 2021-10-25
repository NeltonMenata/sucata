import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'function_global/size.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purple,
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() async {
    var sucataUser = ParseObject("Usuario")
      ..set("name", "Nelton Menata")
      ..set("telephone", "941357140")
      ..set("password", "nelton123");
    await sucataUser.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: alturaPor(20, context),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 55, left: 55),
                child: Text("SUCATA",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Text(
                      "Aceder Conta",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      width: larguraPor(70, context),
                      padding: EdgeInsets.only(right: 12, left: 12, bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(45),
                          ),
                          border: Border.all()),
                      child: TextFormField(
                        decoration:
                            InputDecoration(hintText: "Número da conta"),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: larguraPor(70, context),
                      padding: EdgeInsets.only(right: 12, left: 12, bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(45),
                          ),
                          border: Border.all()),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Senha"),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: larguraPor(70, context),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(45),
                          ),
                          border: Border.all()),
                      child: TextButton(
                        child: Text("Aceder", style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
