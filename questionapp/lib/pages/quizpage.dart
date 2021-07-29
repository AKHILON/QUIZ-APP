import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questionapp/data/buttoncontainer.dart';
import 'package:questionapp/model/provider.dart';
import 'package:questionapp/pages/resultpage.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff30353a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Color(0xff30353a),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                Provider.of<ProviderDemo>(context).getNumber(),
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
                color: Color(0xff30353a),
                borderRadius: BorderRadius.circular(20),
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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  Provider.of<ProviderDemo>(context).getText(),
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonContainer(
            onpressed: () {
              Provider.of<ProviderDemo>(context, listen: false).nextQuestion();
              Provider.of<ProviderDemo>(context, listen: false)
                  .checkAnwser(false);
            },
            text: Provider.of<ProviderDemo>(context).getAnswer(),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonContainer(
            onpressed: () {
              Provider.of<ProviderDemo>(context, listen: false).nextQuestion();
              Provider.of<ProviderDemo>(context, listen: false)
                  .checkAnwser(false);
            },
            text: Provider.of<ProviderDemo>(context).getTwo(),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonContainer(
            onpressed: () {
              Provider.of<ProviderDemo>(context, listen: false).nextQuestion();
              Provider.of<ProviderDemo>(context, listen: false)
                  .checkAnwser(false);
            },
            text: Provider.of<ProviderDemo>(context).getThree(),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonContainer(
            onpressed: () {
              Provider.of<ProviderDemo>(context, listen: false).nextQuestion();
              Provider.of<ProviderDemo>(context, listen: false)
                  .checkAnwser(false);
            },
            text: Provider.of<ProviderDemo>(context).getFour(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton.icon(
                    color: Color(0xff30353a),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ResultPage()));
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Result',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
