import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questionapp/pages/homepage.dart';
import 'package:questionapp/model/provider.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff30353a),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: RichText(
                text: TextSpan(
                    text: Provider.of<ProviderDemo>(context).getFinal(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                    children: [
                      TextSpan(
                          text: '/10',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                          )),
                    ]),
              ),
            ),
            RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Start Again')),
          ]),
    );
  }
}
