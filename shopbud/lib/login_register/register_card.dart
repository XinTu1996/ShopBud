import 'package:flutter/material.dart';
import 'package:shopbud/utils/fake_data.dart';
import 'package:shopbud/common_ui/gradient_button.dart';
import 'package:shopbud/login_register/error.dart';

class RegisterCard extends StatefulWidget {
  @override
  _RegisterCardState createState() => new _RegisterCardState();
}

class _RegisterCardState extends State<RegisterCard>
    with SingleTickerProviderStateMixin {
  var deviceSize;
  AnimationController controller;
  Animation<double> animation;
  String username, password;

  Widget get registerForm {
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
                      if (validate(username) == 1) {
                        FakeData.accounts[username] = password;
                        Navigator.pushNamed(context, "/Home");
                      } else {
                        showValidError(context);
                      }
                    },
                    text: "Register"),
              ),
              new FlatButton(
                  child: Text("Sign In"),
                  onPressed: () => {
                    Navigator.pushNamed(context, "/Login")
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget registerCard() {
    return Opacity(
      opacity: animation.value,
      child: SizedBox(
        height: deviceSize.height / 2 - 20,
        width: deviceSize.width * 0.85,
        child: new Card(
            color: Colors.white, elevation: 2.0, child: registerForm),
      ),
    );
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

  // 0: username already exists
  // 1: success
  int validate(String u) {
    if (FakeData.accounts.containsKey(u)) return 0;
    return 1;
  }

  showValidError(BuildContext context) {
    PageWithError.of(context)
        .validationErrorCallback();
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return registerCard();
  }
}
