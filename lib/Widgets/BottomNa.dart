import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNa extends StatelessWidget {
  const BottomNa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height:60.h ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(10),
        topLeft: Radius.circular(10),



        ),
        color: Color(0xFF475269),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.category,color: Colors.white,size: 32,),
          Icon(Icons.shopping_cart_checkout,color: Colors.white,size: 32,),
          Icon(Icons.favorite,color: Colors.white,size: 32,),
          Icon(Icons.person,color: Colors.white,size: 32,),





        ],
      ),
    );
  }
}
