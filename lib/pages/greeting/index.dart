import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'login.dart';
import 'welcome.dart';

class Greeting extends StatefulWidget {
  final login;

  Greeting(this.login);

  @override
  _GreetingState createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  PageController _controller = PageController(initialPage: 0);

  void nextPage() {
    _controller.nextPage(
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/greeting_background.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover),
          ),
          Container(
            color: W2CColor.black.withOpacity(0.3),
          ),
          PageView(
            controller: _controller,
            children: [
              Welcome(() => nextPage()),
              Login(widget.login),
            ],
          ),
        ],
      ),
    );
  }
}
