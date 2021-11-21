import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: -55,
                      height: 350,
                      width: width,
                      child:
                          Container(
color: Colors.white,
                          ),

                    // Positioned(
                    //   height: 50,
                    //   width: width+20,
                    //   child: FadeAnimation(1.3, Container(
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //         image: AssetImage('images/background-2.png'),
                    //         fit: BoxFit.fill
                    //       )
                    //     ),
                    //   )),
                    // )
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[

                    Text(
                      "تسجيل الدخول",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Color.fromRGBO(40, 39, 70, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(120, 135, 198, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            )
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey))),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              controller: _emailController,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "الإيميل",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              controller: _passwordController,
                              autofocus: false,
                              obscureText: true,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "كلمة المرور",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Center(
                        child: Text(
                          "نسيت كلمة المرور؟",
                          style: TextStyle(color: Color(0xFF3F475E)),
                        )),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF3F475E),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacementNamed('/profile');
                            // SystemChannels.textInput
                            //     .invokeMethod('TextInput.hide');
                            // requestLoginAPI(context, _emailController.text,
                            //     _passwordController.text);
                          },
                          child: Center(
                            child: Text(
                              "تسجيل الدخول",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 7,
                    ),

                    // Container(
                    //   height: 50,
                    //   margin: EdgeInsets.symmetric(horizontal: 60),
                    //   decoration: BoxDecoration(
                    //     border: Border.all(color: Color(0xFF3F475E)),
                    //     borderRadius: BorderRadius.circular(50),
                    //   ),
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       Navigator.of(context)
                    //           .pushReplacementNamed('/bottomBar');
                    //     },
                    //     child: Center(
                    //       child: Text(
                    //         "الدخول كضيف",
                    //         style: TextStyle(color: Color(0xFF3F475E)),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      child: GestureDetector(
                          onTap: () {
                            // Navigator.of(context)
                            //     .pushReplacementNamed('/registration');
                          },
                          child: Center(
                              child: Text(
                                "إنشاء حساب",
                                style: TextStyle(color: Colors.grey),
                              ))),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
