import 'package:ahbl/loginPage.dart';
import 'package:flutter/material.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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

              // const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "CNIC",
                      fillColor: const Color(0xab8ea6b9),
                      filled: true,
                      prefixIcon: const Icon(Icons.contact_mail_outlined,color: Color(0xff02223b),),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff028efa)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          // borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "CNIC Issuance date",
                      fillColor: const Color(0xab8ea6b9),
                      filled: true,
                      prefixIcon: const Icon(Icons.dataset,color: Color(0xff02223b),),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff028efa)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          // borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Mobile",
                      fillColor: const Color(0xab8ea6b9),
                      filled: true,
                      prefixIcon: const Icon(Icons.phone_android,color: Color(0xff02223b),),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff028efa)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          // borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      fillColor: const Color(0xab8ea6b9),
                      filled: true,
                      prefixIcon: const Icon(Icons.perm_identity_outlined,color: Color(0xff02223b),),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff028efa)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          // borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: const Color(0xab8ea6b9),
                      filled: true,
                      prefixIcon: const Icon(Icons.password_outlined,color: Color(0xff02223b),),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff028efa)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          // borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      fillColor: const Color(0xab8ea6b9),
                      filled: true,
                      prefixIcon: Icon(Icons.password,color: Color(0xff02223b),),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff028efa)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.white),
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
                    Text("Forgot Password!",style: TextStyle(color:Colors.white),),
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
                      border: Border.all(color: Colors.white,style: BorderStyle.solid,width: 3)
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: const Text("Register Now",style: TextStyle(
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
                    Text("Already have an Account? ",style: TextStyle(color: Color(
                        0xbaffffff)),),

                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text("Login Now",style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.w400))),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
