//

import 'package:flutter/material.dart';

class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
        title: Text('PROTECTO',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: screenSize.width * 0.075,
                color: Color.fromRGBO(0, 0, 139, 1))),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              borderOnForeground: true,
              elevation: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                        "https://www.nationalgeographic.com/content/dam/news/2015/07/15/poachingconf.ngsversion.1436985000252.adapt.1900.1.jpg"),
                  ),
                  const ListTile(
                    title: Text(
                      'Dugong',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    subtitle: Text(
                      "The dugong is a medium-sized marine mammal. It is one of four living species of the order Sirenia, which also includes three species of manatees. It is the only living representative of the once-diverse family Dugongidae; its closest modern relative, Steller's sea cow, was hunted to extinction in the 18th century.",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
