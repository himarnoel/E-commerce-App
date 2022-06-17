import 'package:flutter/material.dart';

import 'model.dart';

class Place extends StatelessWidget {
  final int i;
  Place(this.i);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 3,
      width: width / 2,
      padding: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                offset: const Offset(0, 0),
                blurRadius: 6,
                spreadRadius: 0)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            list[i].image,
            scale: 6.4,
          ),
          Container(
            height: height / 10,
            width: width / 2,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    list[i].name,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    list[i].price,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
