import 'package:chatflutter/view/screen/loginScreen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String id='SignInScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Sign in!',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('pleas sign in'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('to continue to the app'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(backgroundColor:MaterialStateProperty .all(Theme.of(context).primaryColor) ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(LoginScreen.id);
                  }, child: Text('Done')),
            ),
          ],
        ),
      )
    );
  }

}
