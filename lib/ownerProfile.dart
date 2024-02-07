import 'package:ahbl/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'appBar.dart';
import 'atmCard.dart';
import 'home.dart';
import 'myStyle.dart';

class OwnerProfile extends StatefulWidget {
  const OwnerProfile({super.key});

  @override
  State<OwnerProfile> createState() => _OwnerProfileState();
}

class _OwnerProfileState extends State<OwnerProfile> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            key: GlobalKey(),
            index: 2,
            height: 60,
            color: mainColor,
            buttonBackgroundColor:  mainColor,
            backgroundColor: Colors.white,
            items: [
              Icon(Icons.home, size: 30, color: Colors.white,),
              Icon(Icons.mark_unread_chat_alt_outlined, size: 30, color: Colors.white,),
              Icon(Icons.qr_code_2_sharp, size: 40, color: Colors.white,),
              Icon(Icons.add_card, size: 30, color: Colors.white,),
              Icon(Icons.perm_identity_outlined, size: 30, color: Colors.white,),
            ],
            onTap: (index) {
              // Handle navigation to different screens based on the tapped index
              setState(() {
              });

              switch (index) {
                case 0:
                // Navigate to Home
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  break;
                case 1:
                // Navigate to Chat screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyAtmCard()));
                  break;
                case 2:
                // Navigate to QR Scanner
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  break;
                case 3:
                // Navigate to Add Card screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyAtmCard()));
                  break;
                case 4:
                // Navigate to Profile screen
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OwnerProfile()));
                  break;
              }
            },
          ),

          // backgroundColor: mainColor,
          body: ListView(
            children: [
              Stack(
                children: [

                  MyProfile(),
                  MyAppBar(),//AppBar
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text("Basics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xec043b65)),),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                    SizedBox(height: 20,),
                    Text("IBAN",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text("PK27AHB11730045678",style: TextStyle(fontSize: 14,color: Color(0xff4a4b4b)),),
                    SizedBox(height: 10,),
                    Text("Account Type",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text("Single-Sole Owner",style: TextStyle(fontSize: 14,color: Color(0xff4a4b4b)),),
                    SizedBox(height: 10,),
                    Text("Branch",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text("1173-Karachi",style: TextStyle(fontSize: 14,color: Color(0xff4a4b4b)),),
                    SizedBox(height: 10,),
                    Text("Status",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text("Active",style: TextStyle(fontSize: 14,color: Color(0xff4a4b4b)),),
                    SizedBox(height: 10,),
                    Text("E-Statement Subscribed",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Text("MONTHLY",style: TextStyle(fontSize: 14,color: Color(0xff4a4b4b)),)
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
