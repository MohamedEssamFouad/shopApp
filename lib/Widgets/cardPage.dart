import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(

                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.arrow_back,size: 30,color: Color(0xFF475269),),
                      ),
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.favorite,size: 30,color: Color(0xFF475269),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.40,
                //  color: Colors.white,
                  child: Stack(
                    children: [
                      Container(
                        height: 230.h,
                        width: 230.w,

                        decoration: BoxDecoration(
                          color: Color(0xFF475269),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Image.asset('assests/images/1_1111-removebg-preview.png',width: 350.w,height: 350.h,fit: BoxFit.contain,)
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New Nike Shoe',style: TextStyle(
                              color: Color(0xFF475269),
                              fontWeight: FontWeight.w500,
                              fontSize: 25.sp
                          ),
                          ),
                          Text(
                            '\$50',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20.sp,
                            ),
                          ),
                  ],

                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 20,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context,index)=>Icon(

                            Icons.favorite,
                            color: Colors.redAccent,

                          ),
                          onRatingUpdate: (index){},
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'idescriptionThis is descriptionThis is descriptionThis is descriptionThis is descriptionThis is description'
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                              fontSize: 15.sp,

                            ),
                          ),
                          SizedBox(width: 5,),
                          for(int i=5;i<10;i++)
                            Container(
                              height: 35.h,
                              width: 35.w,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF475269),
                                    blurRadius: 5,
                                    spreadRadius: 1,

                                  ),

                                ],
                              ),
                              child: Text(
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                i.toString(),
                              ),
                            ),

                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF475269),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Add To Cart',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                              ),
                              Icon(
                                Icons.shopping_cart_checkout,
                                color: Colors.white,
                                size: 30,
                              ),

                            ],
                          ),
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
}
