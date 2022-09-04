import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  List<List<dynamic>> equipmentLists = [
    [
      "https://th-live-01.slatic.net/p/98ba90d648e6aa1fa20ad66189662287.jpg",
      "used for cooking or cutting things ",
      465000000,
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQopqAFOiiIBaJyPCscyw8WKrJKZc5GGcRoyg&usqp=CAU",
      "go beat the head of someone you don't like",
      150000000000,
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPmRRkIfQHMqbi8gxUKJYHZ1-MiJqkxWkVMQ&usqp=CAU",
      "used to cut wood",
      59000,
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNF4qJdK5a093J9guQacur_pNPCDJcaASbnw&usqp=CAU",
      "Killed Darth Vader",
      1000000000,
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: equipmentLists.length,
        itemBuilder: (_, index) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        equipmentLists[index][0],
                        fit: BoxFit.cover,
                        width: 110,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${equipmentLists[index][1]}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${equipmentLists[index][2]}",
                                style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.bottomRight,
                    child: Chip(
                      backgroundColor: Colors.orange,
                      label: Text(
                        "order Now",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
