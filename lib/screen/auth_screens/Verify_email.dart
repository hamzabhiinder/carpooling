import 'package:carpooling_app/screen/auth_screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'dart:developer' as devtools show log;

import '../../services/auth1/auth_sevices1.dart';


class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VERIFICATION OF EMAIL!!!"),
      ),
      body: FutureBuilder(
          future: AuthService.firebase().initialize(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return Column(
                  children: [
                    const Text("Please Check your Email and Verify !"),
                    const Text(
                        "If you have not recive email please press below button"),
                    Center(
                      child: TextButton(
                        onPressed: () async {
                          await AuthService.firebase().currentUser;
                        },
                        child: Text("VerifyEmail"),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        await AuthService.firebase().logOut();

                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_)=>SignupScreen()),
                          (route) => false,
                        );
                      },
                      child: Text("Restart"),
                    ),
                  ],
                );

              default:
                return const Text("Register");
            }
          }),
    );
  }
}
