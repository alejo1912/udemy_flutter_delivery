import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  get height => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( //posicionar  elemnetos uno encima del otro
        children: [
          _backgroundCover(),//color
          Column( //posicionar elemnetos uno debajo del otro(vertical)
            children: [
              _imageCover(),
              _textAppName()
            ],
          )
        ],
      ),
    );
  }

  Widget _backgroundCover() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.orangeAccent,
      alignment: Alignment.topCenter,
    );
  }

  Widget _textAppName() {
    return Text(
      'DELIVERY SERVICIOS'
    );
  }

//PUBLIC
Widget _imageCover() {
  return SafeArea(
    child: Container(
      margin:EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/img/delivery.png',
        width: 130,
        height: 130,
       ), //image.asset
     ),
  ) ; //container
  }
}