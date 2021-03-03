import 'package:flutter/material.dart';
import 'package:flutter_app/Login.dart';


/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/iceberg.png',
            height: 300,
            width: 300,
          ),

          RaisedButton(
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {},
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
            color: Colors.blue,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),

             // padding: const EdgeInsets.all(20),
              child:
              const Text('Sign Up', style: TextStyle(fontSize: 20)),

            ),

          RaisedButton(
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginDemo()),
              );
            },
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
            color: Colors.blue,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),

            // padding: const EdgeInsets.all(20),
            child:
            const Text('Login', style: TextStyle(fontSize: 20)),
          ),


          RaisedButton(
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {},
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
            color: Colors.blue,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),

            // padding: const EdgeInsets.all(20),
            child:
            const Text('Login as Guest', style: TextStyle(fontSize: 20),),

          ),

        ],
      ),
    );
  }
}
