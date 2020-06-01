part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("splash page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("go to sign in page"),
            onPressed: () {
              context.bloc<PageBloc>().add(GoToLoginPage());
            }),
      ),
    );
  }
}