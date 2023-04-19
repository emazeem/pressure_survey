import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ssgc/view/onBoarding.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _selectedItem;
  List<String> _items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Pressure Survery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.5,
              color: const Color.fromARGB(255, 177, 216, 236),
              child: DropdownButton(
                hint: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Select an item',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                value: _selectedItem,
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: (newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                items: _items.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnBoarding(),
                      ));
                  // Add your onPressed logic here.
                },
                child: const Text('START'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
