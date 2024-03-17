import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_sign_up/screens/sign_up_screen.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/login_image.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 19.h),
                Text(
                  'Welcome\nBack',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 18.h),
                TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 101, 101, 101),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 3.5.h),
                TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 101, 101, 101),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 0.7.h),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 82, 82, 82),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.5.h),
                SizedBox(
                  height: 6.5.h,
                  width: 100.w,
                  child: Material(
                    color: const Color.fromARGB(255, 255, 158, 13),
                    borderRadius: BorderRadius.circular(7.sp),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SignUpScreen());
                      },
                      borderRadius: BorderRadius.circular(7.sp),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.5.h),
                Center(
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 82, 82, 82),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 3.5.h),
                SizedBox(
                  height: 6.5.h,
                  width: 100.w,
                  child: Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(7.sp),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SignUpScreen());
                      },
                      borderRadius: BorderRadius.circular(7.sp),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
