import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My First App',
    home: HomePage(),
  ));
}

// To create a Stateful page - Type STF
// To create a Stateless page - Type STL

final TextEditingController nameController = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'My Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(children: [
          Text('Hello World'),
          Image.network(
              'https://cdn.pixabay.com/photo/2023/03/26/11/40/woman-7878192_960_720.jpg'),
          Text('Hello World'),
          TextField(
            controller: nameController,
          ),
          ElevatedButton(
              onPressed: () {
                print('Button Clicked');
                print(nameController.text);
              },
              child: Text('Submit'))
        ]),
      ),
    );
  }
}
