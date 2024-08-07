import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_pixels/image_pixels.dart';

class ItemWidget extends StatelessWidget {
  final int index;
  final String itemName;
  final bool? isFavorite;
  final String imageName;

  const ItemWidget(
      {super.key,
      required this.index,
      this.isFavorite,
      required this.itemName,
      required this.imageName});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(100.r),
        bottomRight: Radius.circular(12.r),
        topLeft: Radius.circular(20.r),
        topRight: Radius.circular(45.r),
      ),
      child: ImagePixels.container(
        imageProvider: AssetImage(
          imageName,
        ),
        colorAlignment: Alignment.center,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                    ),
                  ),
                  minWidth: 50.w,
                  padding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                  color: Colors.white38,
                  onPressed: () {},
                  child: const Icon(Icons.shopping_cart_checkout_outlined,
                      color: Colors.white),
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "assets/images/grape$index.png",
                fit: BoxFit.cover,
              ),
            ),
            // const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      itemName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      " مزرعة السعيدة",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      " 4000 الف ريال ",
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                const Icon(
                  CupertinoIcons.heart,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
