import 'package:flutter/material.dart';

class MeterScreen extends StatefulWidget {
  @override
  _MeterScreenState createState() => _MeterScreenState();
}

class _MeterScreenState extends State<MeterScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _items = [
    'Apple',
    'Banana',
    'Cherry',
    'Durian',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Ice cream bean',
    'Jackfruit',
    'Kiwi',
    'Lemon',
    'Mango',
    'Nectarine',
    'Orange',
    'Pineapple',
    'Quince',
    'Raspberry',
    'Strawberry',
    'Tangerine',
    'Ugli fruit',
    'Vanilla bean',
    'Watermelon',
    'Xigua melon',
    'Yellow watermelon',
    'Zucchini'
  ];
  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Meters to point :1G1233',
          style: TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 44, 44, 44)),
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    _filteredItems = _items
                        .where((item) =>
                            item.toLowerCase().contains(value.toLowerCase()))
                        .toList();
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.09,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Area: 062(Total meters 6624)',
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                    Text(
                      'Already Added Meters: 0',
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    onTap: () {},
                    title: Text(_filteredItems[index]),
                    subtitle: Text('Tap to add this point'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
