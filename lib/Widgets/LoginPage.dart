import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopapp/Widgets/HomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Image(image: AssetImage('assests/images/istockphoto-1135341047-612x612-removebg-preview.png'),
                  width:300.w,height: 300.h,),

              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter User Name',
                      icon:Icon(
                        Icons.person,
                      ),
                      border: InputBorder.none,
                    ),

                  ),
                ),
              ),
              ),
              SizedBox(height: 25.h,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),

                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        icon:Icon(
                          Icons.person,
                        ),
                        border: InputBorder.none,
                      ),

                    ),
                  ),
                ),
              ),
             SizedBox(height: 10.h,),
             Container(
               margin: EdgeInsets.only(left: 15),
               alignment: Alignment.centerLeft,
               child: TextButton(
                 onPressed: (){},
                 child: Text(
                   'Forgot Password',
                   style: TextStyle(
                     color: Color(0xFF475269),
                     fontSize: 16.sp,
                     fontWeight: FontWeight.w500,
                   ),
                 ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF475269),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF475269).withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],

                    ),
                    width: double.infinity,
                    height: 50.h,
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'dont have an account?',
                    style: TextStyle(
                      color: Color(0xFF475269).withOpacity(0.8),
                      fontSize: 15.sp,
                    ),
                  ),
                  TextButton(onPressed: (){}, child:

                  Text(
                    'Sign Up ',style: TextStyle(
                    color: Color(0xFF475269),
                    fontSize: 15.sp,

                  ),
                  )
                  ),
                ],
              ),

            ],
          ),
        ),
      ),



    );
  }
}
