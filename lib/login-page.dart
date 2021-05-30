import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  Widget _body(){
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 150,
                child: Image.asset('assets/images/logo.png'),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left:8, right: 8, top: 20, bottom: 12,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = (text);
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder() 
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = (text);
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder() 
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          if(email == 'abc' && password == '123'){
                            Navigator.of(context).pushReplacementNamed('/home');
                          }else {
                            print('Errado');  
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          child: Text('Logar', textAlign: TextAlign.center,)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpg', fit: BoxFit.cover)
          ),
          Container(color: Colors.black.withOpacity(0.2)),
          _body(),
        ],
      )
    );
  }
}