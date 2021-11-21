import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: mySize.height /100*5),
            Container(
              child: Text(
                'حسابي',
                style: TextStyle(
                  color: Color(0xFF3F475E),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              margin: EdgeInsets.only(
                top: mySize.height / 100 * 15, ),
            ),
            SizedBox(
              height: mySize.height / 100 * 5,
            ),
            Container(
              height: mySize.height / 100 * 8,
              width: mySize.width / 100 * 90,
              padding: EdgeInsets.only(right: mySize.width / 100 * 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(120, 135, 198, .3),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ]),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'الاسم',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: mySize.height / 100 * 4,
            ),
            Container(
              height: mySize.height / 100 * 8,
              width: mySize.width / 100 * 90,
              padding: EdgeInsets.only(right: mySize.width / 100 * 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(120, 135, 198, .3),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ]),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'البريد الإلكتروني',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: mySize.height / 100 * 5,
            ),
            Container(
              height: mySize.height / 100 * 8,
              width: mySize.width / 100 * 90,
              padding: EdgeInsets.only(right: mySize.width / 100 * 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(120, 135, 198, .3),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ]),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'رقم الهاتف',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: mySize.height / 100 * 7,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.of(context)
                //     .pushReplacementNamed('/bottomBar');
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF3F475E),
                ),
                child: Center(
                  child: Text(
                    "تحديث",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),

            ),
            SizedBox(
              height: 20,
            ),

            Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/login');
                  },
                  child: Center(
                      child: Text(
                        "عودة",
                        style: TextStyle(color: Colors.grey),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
