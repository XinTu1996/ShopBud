import 'package:flutter/material.dart';
import 'package:shopbud/login_register/error.dart';
import 'package:shopbud/login_register/background.dart';
import 'package:shopbud/login_register/register_card.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  final scaffoldState = GlobalKey<ScaffoldState>();
  Widget loginScaffold() => PageWithError(
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
      content: Text("Username already exists!"),
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
            RegisterCard(),
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