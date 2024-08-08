import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 244, 246, 244),
      child: Stack(
        children: [
          // الصورة كخلفية
          Positioned.fill(
            child: Image.asset(
              'assets/images/markus_spiske_4.jpeg',
              fit: BoxFit.cover, // لجعل الصورة تغطي كامل الخلفية
            ),
          ),
          // النصوص فوق الصورة
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'احصل على خصومات على جميع المنتجات',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 16, 59, 42), // لجعل النص واضحًا على الخلفية
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 500),
                // يمكنك إضافة المزيد من النصوص أو العناصر هنا إذا لزم الأمر
              ],
            ),
          ),
        ],
      ),
    );
  }
}
