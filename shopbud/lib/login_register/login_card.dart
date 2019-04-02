import 'package:flutter/material.dart';
import 'package:shopbud/login_register/error.dart';
import 'package:shopbud/utils/fake_data.dart';
import 'package:shopbud/common_ui/gradient_button.dart';

class LoginCard extends StatefulWidget {
  @override
  _LoginCardState createState() => new _LoginCardState();
}

class _LoginCardState extends State<LoginCard>
    with SingleTickerProviderStateMixin {
  var deviceSize;
  AnimationController controller;
  Animation<double> animation;
  String username, password;

  Widget get loginForm {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new TextField(
                onChanged: (un) => username = un,
                style:
                new TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: new InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                    labelStyle: TextStyle(fontWeight: FontWeight.w700)),
              ),
              new SizedBox(
                height: 10.0,
              ),
              new TextField(
                onChanged: (pw) => password = pw,
                //keyboardType: TextInputType.number,
                style: new TextStyle(
                    fontSize: 15.0, color: Colors.black),
                decoration: new InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                    labelStyle: TextStyle(fontWeight: FontWeight.w700)),
                obscureText: true,
              ),
              new SizedBox(
                height: 30.0,
              ),
              Container(
                child: new GradientButton(
                    onPressed: () {
                      int type = validate(username, password);
                      type == 2
                          ? Navigator.pushNamed(context, "/Home")
                          : showValidError(context, type);
                    },
                    text: "Login"),
              ),
              new FlatButton(
                  child: Text("Register"),
                  onPressed: () => {
                    Navigator.pushNamed(context, "/Register")
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginCard() {
    return Opacity(
      opacity: animation.value,
      child: SizedBox(
        height: deviceSize.height / 2 - 20,
        width: deviceSize.width * 0.85,
        child: new Card(
            color: Colors.white, elevation: 2.0, child: loginForm),
      ),
    );
  }

  // 0: no username
  // 1: username and password don't match
  // 2: success
  int validate(String u, String p) {
    if (!FakeData.accounts.containsKey(u)) return 0;
    if (FakeData.accounts[u] != p) return 1;
    return 2;
  }

  showValidError(BuildContext context, int type) {
    PageWithError.of(context)
        .validationErrorCallback(type);
  }

  @override
  initState() {
    super.initState();
    controller = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 1500));
    animation = new Tween(begin: 0.0, end: 1.0).animate(
        new CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));
    animation.addListener(() => this.setState(() {}));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return loginCard();
  }
}
