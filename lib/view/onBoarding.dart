import 'package:flutter/material.dart';
import 'package:ssgc/view/newInspection.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pressure Survey (Team G)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewInspection(),
                          ));
                    },
                    title: Text('Inspection'),
                    leading: Icon(Icons.search_rounded),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: Text('On going inspection'),
                    leading: Icon(Icons.offline_bolt_outlined),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    title: Text('Reports'),
                    leading: Icon(Icons.report),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
