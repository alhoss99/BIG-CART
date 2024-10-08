import 'package:big_cart/View/Screens/Users_View/category_product.dart';
import 'package:big_cart/View/Screens/onBorading/page.dart';
import 'package:big_cart/View/Screens/onBorading/selection_screen.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/compelet_pass.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/forget_pass.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/sure_psaa.dart';
import 'package:big_cart/View/Screens/Driver_View/auth/forget_password.dart';
import 'package:big_cart/View/Screens/Driver_View/auth/login_driver.dart';
import 'package:big_cart/View/Screens/Driver_View/auth/reset_password.dart';
import 'package:big_cart/View/Screens/Driver_View/auth/success_reset_pass_screen.dart';
import 'package:big_cart/View/Screens/Driver_View/order.dart';
import 'package:big_cart/View/Screens/Driver_View/order_details.dart';
import 'package:big_cart/View/Screens/Driver_View/track.dart';
import 'package:big_cart/View/Screens/Users_View/aboutme.dart';
import 'package:big_cart/View/Screens/Users_View/main_user_screen.dart';
import 'package:big_cart/View/Screens/Users_View/product.dart';
import 'package:big_cart/View/Screens/Users_View/select_category_screen.dart';
import 'package:big_cart/View/Screens/Users_View/empty_cart.dart';
import 'package:big_cart/View/Screens/Users_View/invoice.dart';
import 'package:big_cart/View/Screens/Users_View/list_of_orders.dart';
import 'package:big_cart/View/Screens/Users_View/profile.dart';
import 'package:big_cart/View/Screens/onBorading/onborading_page_view.dart';

import 'package:big_cart/View/Screens/onBorading/page_2.dart';
import 'package:big_cart/View/Screens/onBorading/page_3.dart';
import 'package:big_cart/View/Screens/onBorading/page_4.dart';
import 'package:big_cart/View/Screens/farmer/comments.dart';
import 'package:big_cart/View/Screens/farmer/sections.dart';
import 'package:big_cart/View/Screens/farmer/added_offer.dart';
import 'package:big_cart/View/Screens/farmer/added_prodact.dart';
import 'package:big_cart/View/Screens/farmer/allprodact.dart';
import 'package:big_cart/View/Screens/farmer/auth/bigin_screen.dart';
import 'package:big_cart/View/Screens/farmer/auth/forget_password.dart';
import 'package:big_cart/View/Screens/farmer/auth/login_farmer.dart';
import 'package:big_cart/View/Screens/farmer/auth/reset_password.dart';
import 'package:big_cart/View/Screens/farmer/auth/success_reset_pass_screen.dart';
import 'package:big_cart/View/Screens/farmer/trak_order.dart';
import 'package:big_cart/View/Screens/onBorading/splash_screen.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
// import 'package:big_cart/view/Screens/Driver_View/SectionsDeliverdart';

import 'package:get/get.dart';
import 'package:big_cart/View/Screens/Users_View/favorite.dart';
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/login.dart';
import 'package:big_cart/View/Screens/Users_View/search.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/signup.dart';

import 'View/Screens/Driver_View/google_map.dart';
import 'View/Screens/Users_View/accept_order.dart';
import 'View/Screens/Users_View/cart.dart';
import 'View/Screens/Users_View/cow_screen.dart';

List<GetPage<dynamic>>? route = [
  //==================Auth-User===============================
  GetPage(
    name: AppRoute.userLogin,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoute.userSignup,
    page: () => const Signup(),
  ),
  GetPage(
    name: AppRoute.surepass,
    page: () => const SurePass(),
  ),
  GetPage(
    name: AppRoute.completpass,
    page: () => const Completpass(),
  ),
  GetPage(
    name: AppRoute.forgetpass,
    page: () => const ForgetPass(),
  ),
//====================Users-Screens===============================
  GetPage(
    name: AppRoute.invoice,
    page: () => const Invoice(),
  ),
  GetPage(
    name: AppRoute.listOfOrders,
    page: () => const ListOfOrders(),
  ),
  GetPage(
    name: AppRoute.selectionScreen,
    page: () => const SelectionScreen(),
  ),
  GetPage(
    name: AppRoute.onboarding,
    page: () => const Onboarding(),
  ),
  // GetPage(
  //   name: AppRoute.page1,
  //   page: () => const Page1(),
  // ),
  GetPage(
    name: AppRoute.page2,
    page: () => const Page2(),
  ),
  GetPage(
    name: AppRoute.page3,
    page: () => const Page3(),
  ),
  GetPage(
    name: AppRoute.page4,
    page: () => const Page4(),
  ),
  GetPage(
    name: AppRoute.emptyCart,
    page: () => const EmptyCart(),
  ),
  GetPage(
    name: AppRoute.selectCategoryScreen,
    page: () => const SelectCategoryScreen(),
  ),
  GetPage(
    name: AppRoute.home,
    page: () => const MainUserScreen(),
  ),

  GetPage(
    name: AppRoute.favorite,
    page: () => const Favorite(),
  ),
  GetPage(
    name: AppRoute.search,
    page: () => const Search(),
  ),

  GetPage(
    name: AppRoute.profile,
    page: () => const Profile(),
  ),
  GetPage(
    name: AppRoute.aboutMe,
    page: () => const AboutMe(),
  ),
  GetPage(
    name: AppRoute.acceptOrder,
    page: () => const AcceptOrder(),
  ),
  GetPage(
    name: AppRoute.cart,
    page: () => const Cart(),
  ),
  GetPage(
    name: AppRoute.cowScreen,
    page: () => const CowScreen(),
  ),

//====================Driver-Route===============================
  //====================Auth-Driver===============================
  GetPage(
    name: AppRoute.driverLogin,
    page: () => const LoginDriver(),
  ),
  GetPage(
    name: AppRoute.driverForgetPassword,
    page: () => const ForgetPasswordDriver(),
  ),
  GetPage(
    name: AppRoute.driverResetPass,
    page: () => const ResetPasswordDriver(),
  ),
  GetPage(
    name: AppRoute.driverResetPassSuccess,
    page: () => const SuccessResetPassScreenDriver(),
  ),
  //====================Driver-Screens===============================
  GetPage(
    name: AppRoute.driverOrder,
    page: () => const Order(),
  ),
  // GetPage(
  //   name: AppRoute.SectionsDeliver,
  //   page: () => const SectionsDeliver(),
  // ),
  GetPage(
    name: AppRoute.categoryProduct,
    page: () => const CategoryProduct(),
  ),
  GetPage(
    name: AppRoute.spalsh,
    page: () => SplashScreen(),
  ),
  
  GetPage(
    name: AppRoute.track,
    page: () => const Track(),
  ),
  GetPage(
    name: AppRoute.orderDetails,
    page: () => const OrderDetails(),
  ),
  GetPage(
    name: AppRoute.googleMapScreen,
    page: () => const GoogleMapScreen(),
  ),
  //====================Farmer-Route===============================
  //====================Auth-Farmar===============================
  GetPage(
    name: AppRoute.biginScreenFarmer,
    page: () => const BiginScreenFarmer(),
  ),
  GetPage(
    name: AppRoute.forgetPassFarmer,
    page: () => const ForgetPassFarmer(),
  ),
  GetPage(
    name: AppRoute.loginFarmer,
    page: () => const LoginFarmer(),
  ),
  GetPage(
    name: AppRoute.resetPasswordFarmer,
    page: () => const ResetPasswordFarmer(),
  ),
  GetPage(
    name: AppRoute.successResetPassScreenFarmer,
    page: () => const SuccessResetPassScreenFarmer(),
  ),
  //====================Farmer-Screens===============================
  GetPage(
    name: AppRoute.addedOffer,
    page: () => const AddedOffer(),
  ),
  GetPage(
    name: AppRoute.addedProduct,
    page: () => const AddedProduct(),
  ),
  GetPage(
    name: AppRoute.allProdact,
    page: () => const AllProdact(),
  ),
  GetPage(
    name: AppRoute.comments,
    page: () => const Comments(),
  ),
  GetPage(
    name: AppRoute.sections,
    page: () => const Sections(),
  ),
  GetPage(
    name: AppRoute.trackOrder,
    page: () => const TrackOrder(),
  ),
];
