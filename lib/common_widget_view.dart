// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CommonWidgetView extends StatelessWidget {
  const CommonWidgetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Common Widgets"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              //button_segemented_icon
              SegmentedButton(
                segments: const <ButtonSegment>[
                  ButtonSegment(
                    value: "Pending",
                    label: Text('Pending'),
                    icon: Icon(Icons.timer),
                  ),
                  ButtonSegment(
                    value: "OnGoing",
                    label: Text('OnGoing'),
                    icon: Icon(Icons.run_circle),
                  ),
                  ButtonSegment(
                    value: "Done",
                    label: Text('Done'),
                    icon: Icon(Icons.check_box),
                  ),
                ],
                selected: const {"Pending"},
                onSelectionChanged: (Set newSelection) {},
              ),
              //button_segemented
              SegmentedButton(
                segments: const <ButtonSegment>[
                  ButtonSegment(
                    value: "Pending",
                    label: Text('Pending'),
                  ),
                  ButtonSegment(
                    value: "OnGoing",
                    label: Text('OnGoing'),
                  ),
                  ButtonSegment(
                    value: "Done",
                    label: Text('Done'),
                  ),
                ],
                selected: const {"Pending"},
                onSelectionChanged: (Set newSelection) {},
              ),
              //button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              //sh20
              const SizedBox(
                height: 20.0,
              ),
              //button_icon
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              //button_outline
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: const BorderSide(
                    color: Colors.green,
                  ),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //button_icon_outline
              OutlinedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  side: const BorderSide(
                    color: Colors.green,
                  ),
                ),
                onPressed: () {},
              ),

              //sh50
              const SizedBox(
                height: 50.0,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.black,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 12,
                      offset: Offset(0, 11),
                    ),
                  ],
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 300,
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const Text(
                  "text",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Hello World",
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.red,
                ),
              ),
              const Icon(
                Icons.developer_board,
                size: 24.0,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 24.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1484517586036-ed3db9e3749e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                title: Text("John doe"),
                subtitle: Text("john.doe@gmail.com"),
                trailing: Icon(
                  Icons.add,
                  size: 24.0,
                ),
              ),
              Card(
                color: Colors.amber[300],
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  title: Text("John doe"),
                  subtitle: Text("john.doe@gmail.com"),
                  trailing: Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                ),
              ),
              const ListTile(
                title: Text("Edit Profile"),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
