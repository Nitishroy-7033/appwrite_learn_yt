import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Name",
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Email",
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Password",
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Sign Up"),
        ),
      ],
    );
  }
}
