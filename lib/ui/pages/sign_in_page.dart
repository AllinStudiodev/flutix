part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in cuk"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("sign in"),
            onPressed: () {
              AuthServices.signIn("echo@gmail.com", "123456");
            }),
      ),
    );
  }
}