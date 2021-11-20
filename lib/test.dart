import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Focus',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {


  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Define the focus node. To manage the lifecycle, create the FocusNode in
  // the initState method, and clean it up in the dispose method.
  FocusNode myFocusNode;
  FocusNode myFocusNode1;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
    myFocusNode1 = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();
    myFocusNode1.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Focus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // The first text field is focused on as soon as the app starts.
            TextField(
              autofocus: true,
              focusNode: myFocusNode,
            ),
            // The second text field is focused on when a user taps the
            // FloatingActionButton.
            TextField(
              focusNode: myFocusNode1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the button is pressed,
        // give focus to the text field using myFocusNode.
        onPressed: () {},
        tooltip: 'Focus Second Text Field',
        child: const Icon(Icons.edit),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}