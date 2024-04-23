import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/Widgets/cardPage.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(4, (index) {
        return Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF475269).withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CardPage()));  // Assuming CardPage is the destination screen
                },
                child: Image.asset(
                  'assests/images/1_1111-removebg-preview.png',  // Dynamic asset based on index
                  width: 110.w,
                  height: 110.h,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                'Nike Shoe',
                style: TextStyle(
                  color: Color(0xFF475269),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Nike Shoe for men',
                style: TextStyle(
                  color: Color(0xFF475269).withOpacity(0.7),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$50',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.sp,
                      ),
                    ),
                    Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.shopping_cart_checkout, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
