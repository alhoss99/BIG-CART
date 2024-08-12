import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:big_cart/core/Widgets/app_scaffold.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPadding: false,
            appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'جميع الأقسام',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            onPressed: () {},
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bacg2.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 170.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    imagePath: "assets/images/sec2.png",
                    title: 'العروض',
                    onTap: () {},
                  ),
                  SizedBox(width: 20.w),
                  CustomCard(
                    imagePath: 'assets/images/sec1.png',
                    title: 'عرض المنتجات',
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    imagePath: "assets/images/sec4.png",
                    title: 'تعليقات المستخدمين',
                    onTap: () {},
                  ),
                  SizedBox(width: 20.w),
                  CustomCard(
                    imagePath: 'assets/images/sec3.png',
                    title: 'إضافة المنتجات',
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomCard(
                imagePath: 'assets/images/sec5.png',
                title: 'تتبع طلبات العملاء',
                onTap: () {},
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const CustomCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width.w * 0.43,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10.h),
                blurRadius: 10,
                color: Colors.grey.shade400 // changes position of shadow
                ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(imagePath, height: 80.h),
            SizedBox(height: 10.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}