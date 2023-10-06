// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Examples"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //con
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                height: 200,
                //w100
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  //radius
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  //decoration_image
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.green,
                        Colors.blue,
                        Colors.purple,
                        Colors.red,
                      ],
                    ),
                    border: Border.all(
                      width: 4.0,
                      color: Colors.red[900]!,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[900]!,
                        blurRadius: 24,
                        offset: const Offset(0, 11),
                      )
                    ]
                    // color: Colors.blue,
                    ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
                child: const Icon(
                  Icons.developer_board,
                  size: 60.0,
                  color: Colors.red,
                ),
              ),
              // const SizedBox(
              //   height: 16.0,
              // ),
              Container(
                height: 200,
                //w100 (full width)
                width: MediaQuery.of(context).size.width,
                //p20 (padding 20)
                padding: const EdgeInsets.all(20.0),
                //mt20 (margin top 20)
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                ),
                child: const Text(
                  "text",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/**
 * con tab = Container
 * decoration:
 *    radius tab : borderRadius
 *    gradient tab : gradient
 *    border tab : border
 *    shadow tab : shadow
 *    decoration_image tab : give image to decoration
 * agar container full width => w100 tab
 * 
 */