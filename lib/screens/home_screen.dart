import 'package:flutter/material.dart';
import 'package:navigation_routing_demo/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  // static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenTwo, arguments: {
                  'Node': 'JS Module',
                  'Flutter': 'Good for apps'
                });
                // Navigator.pushNamed(context, ScreenTwo.id, arguments: {
                //   'name': 'Yash Tyagi',
                //   'age': '20',
                //   'mobile no': '8006402554',
                // });
                // _secondScreenButton(context);
                // Navigator.push(context,
                // MaterialPageRoute(builder: (context) => const ScreenTwo()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'Open Second Screen',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Future<void> _secondScreenButton(BuildContext context) async {
  //   final result = await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => const ScreenTwo(),
  //     ),
  //   );

  //   if (!mounted) {
  //     return;
  //   }

  //   ScaffoldMessenger.of(context)
  //     ..removeCurrentSnackBar()
  //     ..showSnackBar(SnackBar(content: Text('$result')));
  // }
}
