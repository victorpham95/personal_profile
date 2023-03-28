import 'package:flutter/material.dart';
import 'package:personal_profile/constant.dart';
import 'package:personal_profile/routes.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Victor's Personal Profile",
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: Constant.maxWithScreen,
          minWidth: Constant.minWithScreen,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return const MyHomePage();
            default:
              return const SizedBox.shrink();
          }
        });
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: Constant.maxWithScreen,
                  height: 500,
                  color: Colors.green,
                ),
              ],
            ), // Introduction
            Row(
              children: [
                Container(
                  width: Constant.maxWithScreen,
                  height: 500,
                  color: Colors.red,
                ),
              ],
            ), // Skill
            Row(
              children: [
                Container(
                  width: Constant.maxWithScreen,
                  height: 500,
                  color: Colors.yellow,
                ),
              ],
            ), // Project
            Row(
              children: [
                Container(
                  width: Constant.maxWithScreen,
                  height: 500,
                  color: Colors.black,
                ),
              ],
            ), // Certificate
            Row(
              children: [
                Container(
                  width: Constant.maxWithScreen,
                  height: 500,
                  color: Colors.blue,
                ),
              ],
            ), // Reward
            Row(
              children: [
                Container(
                  width: Constant.maxWithScreen,
                  height: 500,
                  color: Colors.white,
                ),
              ],
            ), // Contact
          ],
        ),
      )),
    );
  }
}
