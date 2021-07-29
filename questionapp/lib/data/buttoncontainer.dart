import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  final String text;

  final Function onpressed;
  ButtonContainer({
    @required this.onpressed,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: Color(0xff30353a),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[900],
              offset: Offset(5.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.grey[800],
              offset: Offset(-5.0, -5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
          ]),
      child: FlatButton(
        color: Color(0xff30353a),
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.green),
        ),
        shape: StadiumBorder(),
      ),
    );
  }
}
