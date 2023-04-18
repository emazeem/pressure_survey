import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        title: Text('Pressure Survery'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
                'https://dnd3y8e5nonx2.cloudfront.net/teams/avatars/112122/1477556587/display.png'),
            Container(
              height: 50,
              width: 200,
              color: Color.fromARGB(255, 205, 207, 208),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: DropdownButton(
                  hint: Text('Select an item'),
                  value: _selectedItem,
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
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic here.
                },
                child: Text('START'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
