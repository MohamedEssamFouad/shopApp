import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/Widgets/rowItems.dart';

import 'BottomNa.dart';
import 'ItemsPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.menu,size: 30,color: Color(0xFF475269),),
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.add_alert_sharp,size: 30,color: Color(0xFF475269),),
                    ),
                  ],
                ),
                SizedBox(height: 25.h,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        icon:Icon(
                          Icons.search,
                        ),
                        border: InputBorder.none,
                      ),
            
                    ),
                  ),
                ),
                SizedBox(height: 25.h,),
            
                RowItems(),
                SizedBox(height: 25.h,),
                ItemsPage(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNa(),

    );
  }
}
