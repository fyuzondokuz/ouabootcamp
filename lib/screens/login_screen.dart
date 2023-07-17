import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uygulama/screens/profile_screen.dart';
import 'package:uygulama/screens/register_screen.dart';

import 'bottom_bar.dart';
import 'information_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  login(context) async {
    var result = await auth.signInWithEmailAndPassword(
        email: email.text, password: password.text);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BottomBar(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/petmate.png',
                  height: 320,
                  width: 350,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 25),
                  child: Text(
                    'Şimdi giriş yap',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text('lütfen devam etmek için aşağıdaki ayrıntıları girin'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Parola'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //PAROLANIZI MI UNUTTUNUZ
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Parolanızı mı unuttunuz?',
                        style: TextStyle(color: Colors.cyan),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //GİRİŞ BUTONU
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: Colors.cyan,
                        onPressed: () {
                          login(context);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            'Giriş',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //KAYIT OL BUTONU
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hesabınız yok mu?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                      },
                      child: Text(
                        'Kayıt ol',
                        style: TextStyle(color: Colors.cyan),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 175,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
