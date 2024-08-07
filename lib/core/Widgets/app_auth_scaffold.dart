import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAuthScaffold extends StatelessWidget {
  final Widget bottomSheet;
  final Widget child;
  final List<Widget>? actionButton;
  final String title;
  const AppAuthScaffold({
    super.key,
    required this.bottomSheet,
    required this.child,
    required this.title,
    this.actionButton,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: actionButton,
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
      ),
      bottomSheet: bottomSheet,
      body: child,
    );
  }
}
