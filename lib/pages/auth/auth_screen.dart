import 'package:appwrite_learn_yt/pages/auth/widgets/login_widget.dart';
import 'package:appwrite_learn_yt/pages/auth/widgets/singup_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Auth Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: Theme.of(context).colorScheme.onSurface, width: 2),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      isLogin.value = true;
                    },
                    child: Obx(()=>AnimatedContainer(
                       duration: const Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        color: isLogin.value
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Login")],
                      ),
                    ),)
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      isLogin.value = false;
                    },
                    child: Obx(()=>AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        color: isLogin.value
                            ? Theme.of(context).colorScheme.surface
                            : Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Sing Up")],
                      ),
                    ),)
                  )),
                ],
              ),
            ),
            SizedBox(height: 30),


            Obx(()=>isLogin.value ? LoginWidget():SignUpWidget( )),
            
            Spacer(),
            Text("Made with ❤️ by The Flutter Hero"),
          ],
        ),
      ),
    );
  }
}
