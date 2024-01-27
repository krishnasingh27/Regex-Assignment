import 'package:flutter/material.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          "Recipe App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          shape: const StadiumBorder(),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          // Add padding around the search bar
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          // Use a Material design search bar
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: 'Search',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform the search here
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
