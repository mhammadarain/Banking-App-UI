import 'package:ahbl/home.dart';
import 'package:ahbl/signupPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff02223b),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset(
                      "assets/logo.png"),
                ),
              ),
              const Text("Al-Hammad Bank",
                style: TextStyle(fontSize: 36, color: Colors.white),),


              const SizedBox(height: 70,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "User Id",
                      fillColor: const Color(0xbaffffff),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.verified_user, color: Color(0xff02223b),),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff32fae9)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: Color(0xbaffffff),
                      filled: true,
                      prefixIcon: Icon(Icons.lock, color: Color(0xff02223b),),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff32fae9)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password!",
                      style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff02223b),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white,
                          style: BorderStyle.solid,
                          width: 3)
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                      },
                      child: const Text("Login", style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Not a Register User? ", style: TextStyle(color: Color(
                        0xbaffffff)),),

                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => SignupPage()));
                        },
                        child: Text(
                            "Register Now", style: TextStyle(color: Color(
                            0xffffffff), fontWeight: FontWeight.w400))),
                  ],
                ),
              ),
              const SizedBox(height: 118,),
              Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.white,
                  child: const SizedBox()),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.verified, color: Colors.white, size: 30,),
                        Text("Security Tips", style: TextStyle(color: Color(
                            0xbaffffff)),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.phone_in_talk_outlined, color: Colors.white,
                          size: 30,),
                        Text("Contact Us", style: TextStyle(color: Color(
                            0xbaffffff)),)
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.info),
                          onPressed: () {
                            _showDialog(context);
                          },
                        ),
                        // Icon(Icons.library_books,color: Colors.white,size: 30,),
                        Text("User Guide", style: TextStyle(color: Color(
                            0xbaffffff)),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.local_offer_sharp, color: Colors.white,
                          size: 30,),
                        Text("Offers", style: TextStyle(color: Color(
                            0xbaffffff)),)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

}

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Dialog Box Title'),
          content: Text('This is a simple dialog box.'),
          actions: <Widget>[
            BackButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

