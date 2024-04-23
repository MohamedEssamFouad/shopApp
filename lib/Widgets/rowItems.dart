import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowItems extends StatelessWidget {
  const RowItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
      for(int i=0;i<=14;i++)


        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10 ),
          child: Container(


              margin: EdgeInsets.only(top: 10,bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                )],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,right: 70),
                        height: 120.h,width: 130.w,
                        decoration: BoxDecoration(
                          color: Color(0xFF475269),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Image(image: AssetImage('assests/images/1_1111-removebg-preview.png'),width: 150.w,height: 150.h,fit: BoxFit.contain,),

                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 30),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nike Shoe',
                        style: TextStyle(
                          color: Color(0xFF475269),
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Men`s Shoe',
                        style: TextStyle(
                          color: Color(0xFF475269).withOpacity(0.8),
                          fontSize: 16.sp,

                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(

                        children: [
                          Text(
                            '\$ 50',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15.sp,
                            ),
                          ),
                          SizedBox(width:50.w,),
                          Container(

          width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF475269),
                              ),
                              child: Icon(Icons.shopping_cart_checkout,color: Colors.white,))
                        ],
                      ),
                    ],
                  ),

                  ),
                ],
              ),
            ),
        ),
        ],
      ),
    );
  }
}
