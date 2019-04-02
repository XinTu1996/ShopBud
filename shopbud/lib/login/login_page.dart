import 'package:flutter/material.dart';
import 'package:shopbud/login/login_provider.dart';
import 'package:shopbud/login/login_background.dart';
import 'package:shopbud/login/login_card.dart';
import 'package:shopbud/utils/uidata.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final scaffoldState = GlobalKey<ScaffoldState>();
  Widget loginScaffold() => LoginProvider(
    validationErrorCallback: showValidationError,
    child: Scaffold(
      key: scaffoldState,
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[LoginBackground(), LoginWidgets()],
      ),
    ),
  );

  showValidationError() {
    scaffoldState.currentState.showSnackBar(SnackBar(
      content: Text("Username and password didn't match!"),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return loginScaffold();
  }
}

class LoginWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            LoginCard(),
            // new Padding(
            //   padding: const EdgeInsets.only(top: 30.0),
            //   child: new Text(
            //     ISRData.forgot_password,
            //     style: new TextStyle(fontWeight: FontWeight.normal),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}