import 'package:donut_app/tabs/burger_tab.dart';
import 'package:donut_app/tabs/donut_tab.dart';
import 'package:donut_app/tabs/pancake_tab.dart';
import 'package:donut_app/tabs/pizza_tab.dart';
import 'package:donut_app/tabs/smoothie_tab.dart';
import 'package:donut_app/tabs/widgets/my_tab.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> tabs = [
    const MyTab(iconPath: 'assets/images/donut.png'),
    const MyTab(iconPath: 'assets/images/hamburger.png'),
    const MyTab(iconPath: 'assets/images/smoothie.png'),
    const MyTab(iconPath: 'assets/images/pancakes.png'),
    const MyTab(iconPath: 'assets/images/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 32,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  size: 32,
                ))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: RichText(
                  text: const TextSpan(
                      text: 'I want to ',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                      children: [
                    TextSpan(
                        text: 'Eat',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline))
                  ])),
            ),
            TabBar(tabs: tabs),
            Expanded(
                child: TabBarView(
              children: [
                DonutTab(),
                const BurgerTab(),
                const SmoothieTab(),
                const PancakeTab(),
                const PizzaTab()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
