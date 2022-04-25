import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import 'model1.dart';

class ModelUi extends StatelessWidget {
  final int index;
  final onpress;

  const ModelUi({Key? key, required this.index, required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Utils _utils = Utils();
    _utils.size(context);
    var _height = _utils.scale_Height;
    var _width = _utils.scale_Width;
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: _height * 30,
        width: _width * 23,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  offset: const Offset(4.0, -3.0))
            ]),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            SizedBox(
                height: _height * 10,
                width: _width * 10,
                child: Image.asset(model[index].image)),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Text(
                        model[index].title,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: _height * 0.3,
                      ),
                      Text(
                        model[index].subtitle,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: _height * 0.3,
                      ),
                      Text(
                        model[index].price,
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  height: _height * 5,
                  width: _width * 5,
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )),
                  child: const Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
