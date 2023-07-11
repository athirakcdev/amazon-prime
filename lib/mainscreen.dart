import 'package:amazon_prime/pages/homepage.dart';
import 'package:amazon_prime/pages/kidspage.dart';
import 'package:amazon_prime/pages/moviespage.dart';
import 'package:amazon_prime/pages/tvshowspage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(19, 26, 34, 1),
        appBar: AppBar(
          title: const Text("prime video"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
          shadowColor: Colors.white,
          bottom: const TabBar(tabs: [
            Tab(text: "Home"),
            Tab(text: "TV Shows"),
            Tab(text: "Movies"),
            Tab(text: "Kids"),
    
          ]),
        ),
        body: TabBarView(children: [
          HomePage(),
          const TvShowsPage(),
          const  MoviesPage(),
          const KidsPage(),
        ]),
      ),
    );
  }
}