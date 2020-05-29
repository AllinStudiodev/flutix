import 'package:flutix/services/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text("sign Up"),
                  onPressed: () async {
                    SignInSignUpResult result = await AuthServices.signUp(
                        "echo@gmail.com",
                        "123456",
                        "echo",
                        ["Action", "Horror", "Music", "Drama"],
                        "English");

                    if (result.user == null) {
                      print(result.message);
                    } else {
                      print(result.user.toString());
                    }
                  }),
              RaisedButton(
                  child: Text("sign In"),
                  onPressed: () async {
                    SignInSignUpResult result = await AuthServices.signIn(
                      "echo@gmail.com",
                      "1234567",
                    );

                    if (result.user == null) {
                      print(result.message);
                    } else {
                      print(result.user.toString());
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
