import 'package:ahbl/myStyle.dart';
import 'package:flutter/material.dart';

class HomeBalance extends StatelessWidget {
  const HomeBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Available Balance",style: TextStyle(fontSize: 15,color: Colors.white),),
                Text("Rs. 250000.34",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),


              ],
            ),
          ),
          SizedBox(width: 70,),
          Icon(Icons.qr_code_2_sharp,size: 80,color: Colors.white,)
        ],
      ),
    );
  }
}
