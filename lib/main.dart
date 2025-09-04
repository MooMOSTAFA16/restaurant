import 'package:flutter/material.dart';
import 'package:restaurant/orders/view/order_active_page.dart';
import 'package:restaurant/orders/view/order_cancel_reason_page.dart';
import 'package:restaurant/orders/view/order_canceld_succes_page.dart';
import 'package:restaurant/orders/view/order_cancelled_page.dart';
import 'package:restaurant/orders/view/order_complited_page.dart';
import 'package:restaurant/orders/view/order_home_page.dart';             

// Splash
import 'package:restaurant/splash/splash_screen.dart';

// Orders (Control)


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YumQuick',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'Arial',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
     
      routes: {
        '/orders': (context) => const OrderHomePage(),
        '/orders/active': (context) => const OrderActivePage(),
        '/orders/cancel-reason': (context) => const OrderCancelReasonPage(),
        '/orders/cancelled-success': (context) => const OrderCancelledPage(),
        '/orders/completed': (context) => const OrderCompletedPage(),
        // '/orders/review': (context) => const OrderReviewPage(),
          '/orders/completed': (context) => const OrderCompletedPage(),
            '/orders/cancelled-success': (context) => const OrderCancelledSuccessPage(),
      },
    );
  }
}