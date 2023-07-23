import 'package:flutter/material.dart';
import 'package:flutter_threads_ui/utils/extensions.dart';
import 'package:flutter_threads_ui/widgets/navigation.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/img1.png',
            width: width,
            fit: BoxFit.cover,
          ),
          20.pv,
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Navigation(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              height: 78,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Login with Instagram',
                        style: TextStyle(color: Colors.black54),
                      ),
                      5.pv,
                      Row(
                        children: [
                          const Text(
                            'Nabih',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          5.ph,
                          Image.asset(
                            'assets/img2.png',
                            width: 13.0,
                            height: 13.0,
                          )
                        ],
                      )
                    ],
                  ),
                  Image.asset('assets/img3.png')
                ],
              ),
            ),
          ),
          15.pv,
          const Center(
            child: Text(
              'Switch Account',
              style: TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}
