// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:untitled/ui/home/model/model1.dart';
import 'package:untitled/utils/utils.dart';

import '../model2/detail.dart';
import 'modelui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Utils _utils = Utils();
  int i = 0;
  List<String> list = ["All", "fruits", "Vegetables", "Egg & Meat"];

  @override
  Widget build(BuildContext context) {
    _utils.size(context);
    var _height = _utils.scale_Height;
    var _width = _utils.scale_Width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8.0),
          height: _utils.scale_Height * 3,
          width: _utils.scale_Width * 3,
          decoration: BoxDecoration(
            color: Colors.yellow.shade700,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.menu, color: Colors.black),
        ),
        actions: [
          const Spacer(flex: 90),
          Container(
            margin: const EdgeInsets.all(6.0),
            height: _height * 6,
            width: _width * 6,
            decoration: BoxDecoration(
              color: Colors.yellow.shade700,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
          const Spacer()
        ],
      ),
      body: SizedBox(
        height: _height * 900,
        width: _width * 900,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SizedBox(
                  height: _height * 10,
                  width: _width * 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "BD Shops",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(6.0),
                height: _utils.scale_Height * 5,
                width: _utils.scale_Width * 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  cursorColor: Colors.yellow.shade700,
                  decoration: InputDecoration(
                    fillColor: Colors.yellow.shade700,
                      suffixIcon: Icon(Icons.filter_alt,color:Colors.yellow.shade700,),
                      prefixIcon:  Icon(Icons.search,color: Colors.yellow.shade700,),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: _height * 2,
              ),
              Container(
                  color: Colors.white,
                  width: _width * 50,
                  height: _height * 7,
                  child: ListView.builder(
                      padding: const EdgeInsets.only(top: 8.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) => Center(
                            child: Center(
                                child: InkWell(
                              onTap: () {
                                setState(() {
                                  i = index;
                                });
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14.0),
                                    child: Text(
                                      list[index],
                                      style: TextStyle(
                                          fontSize: i == index ? 16 : 15,
                                          color: i == index
                                              ? Colors.black
                                              : Colors.grey.shade600,
                                          fontWeight: i == index
                                              ? FontWeight.w500
                                              : null),
                                    ),
                                  ),
                                  SizedBox(
                                    height: _height * 0.2,
                                  ),
                                  Container(
                                    width: _width * 10,
                                    height: _height * 0.2,
                                    color: i == index
                                        ? Colors.yellow.shade700
                                        : null,
                                  )
                                ],
                              ),
                            )),
                          ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: _height * 57,
                  width: _width * 900,
                  child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: model.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 20),
                      itemBuilder: (context, index) => ModelUi(
                            index: index,
                            onpress: () {
                              setState(() {
                                i = index;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Detail(
                                            ind: i,
                                          )));
                            },
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
