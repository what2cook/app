import 'package:flutter/material.dart';

import 'constants/theme.dart';
import 'greeting/login.dart';
import 'greeting/welcome.dart';

class Greeting extends StatefulWidget {
  @override
  _GreetingState createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {

  PageController _controller = PageController(initialPage: 0);
  
  void nextPage() {
    _controller.nextPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FittedBox(
              child: Image.asset('assets/images/greeting_background.jpg'),
              fit: BoxFit.fill,
          ),
          Container(
            color: W2CColor.black.withOpacity(0.3),
          ),
          PageView(
            controller: _controller,
            children: [
              Welcome(() => nextPage()),
              Login(),
            ],
          ),
        ],
      ),
    );
  }
}



