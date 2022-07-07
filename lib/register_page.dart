import 'package:aas_0076/login_page.dart';
import 'package:aas_0076/product_page.dart';
import 'package:aas_0076/style.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/bg1.png'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 41,
                  margin: EdgeInsets.only(top: 56),
                  padding: EdgeInsets.only(left: 22),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/image/back.png',
                      width: 20,
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(
                          color: Color.fromARGB(232, 228, 228, 228),
                        )),
                  ),
                ),
                Container(
                  height: 41,
                  margin: EdgeInsets.only(top: 56),
                  padding: EdgeInsets.only(right: 22),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProductPage();
                      }));
                    },
                    child: Image.asset(
                      'assets/image/cart.png',
                      width: 25,
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(
                          color: Color.fromARGB(232, 228, 228, 228),
                        )),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Image.asset(
                'assets/image/Logo1.png',
                width: 113,
                height: 52,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 40, left: 40),
              height: 52,
              margin: EdgeInsets.only(bottom: 15, top: 35),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 40, left: 40),
              height: 52,
              margin: EdgeInsets.only(bottom: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 40, left: 40),
              height: 52,
              margin: EdgeInsets.only(bottom: 15),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 40, left: 40),
              height: 52,
              margin: EdgeInsets.only(bottom: 20),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 32, left: 32),
              height: 52,
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: bt_signup,
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  primary: Color.fromRGBO(245, 133, 131, 1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 40, right: 20),
                      child: Divider(
                        color: Color.fromARGB(232, 228, 228, 228),
                        thickness: 2,
                      ),
                    ),
                  ),
                  Text("Or Register with"),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 40),
                      child: Divider(
                        color: Color.fromARGB(232, 228, 228, 228),
                        thickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 56,
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/image/fb.png',
                      width: 28,
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(
                          color: Color.fromARGB(232, 228, 228, 228),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  width: 100,
                  height: 56,
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/image/google.png',
                      width: 32,
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(
                          color: Color.fromARGB(232, 228, 228, 228),
                        )),
                  ),
                ),
                Container(
                  width: 100,
                  height: 56,
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/image/apple.png',
                      width: 32,
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(
                          color: Color.fromARGB(232, 228, 228, 228),
                        )),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Already have an account?',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    },
                    child: Text(
                      'Login Now',
                      textAlign: TextAlign.center,
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
