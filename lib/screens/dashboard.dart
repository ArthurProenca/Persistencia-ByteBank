import 'package:flutter/material.dart';
import 'package:bytebank/screens/contacts_list.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //Ambos podem ser instânciados por esse enum.
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ContactsList(),
                ));
              },
              child: Container(
                  padding: const EdgeInsets.all(8.0),
                  //Em todo o contâiner.
                  height: 100,
                  width: 150,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.people, color: Colors.white, size: 32.0),
                        Text('Contacts',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0)),
                      ])),
            ),
          ),
        ],
      ),
    );
  }
}
