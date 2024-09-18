import 'package:flutter/material.dart';
import 'package:fluttergorouter/pages/about.dart';
import 'package:fluttergorouter/pages/contacts.dart';
import 'package:fluttergorouter/pages/errorpage.dart';
import 'package:fluttergorouter/pages/home.dart';
import 'package:fluttergorouter/pages/profile.dart';
import 'package:go_router/go_router.dart';

// class MyController{
//   String email;
//   String password;

//   MyController(this.email,this.password);
// }

class AppRouteConfig {
  GoRouter router=GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context,state)=>const Home(),
      ),

      GoRoute(
        path: '/about',
        name: 'about',
        builder: (context,state){
          final Map<String,dynamic> data=state.extra as Map<String,dynamic>;
          final email=data['email'];
          final password=data['password'];
          return About(email: email, password: password);
        }
      ),

      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (context, state){
          final Map<String,dynamic> data=state.extra as Map<String,dynamic>;
          final id=data['id'];
          final name=data['name'];
          return profile(id:id, name: name);
        }
        ),

        GoRoute(
          path: '/contacts',
          name: 'contacts',
          builder: (context, state){
            final Map<String,dynamic>data=state.extra as Map<String,dynamic>;
            final mobile_no=data['mobile_no'];
            final pincode=data['pincode'];
            return contacts(mobile_no:mobile_no, pincode:pincode);
          }
          ),
    ],
    errorPageBuilder: (context, state){
      return const MaterialPage(child: errorpage());
    }
  );
}