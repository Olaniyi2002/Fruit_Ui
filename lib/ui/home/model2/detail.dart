import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utils/utils.dart';
import 'model2.dart';

class Detail extends StatefulWidget {
  final int ind;

  const Detail({Key? key, required this.ind}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

var rate = 2.4;

class _DetailState extends State<Detail> {
  int image = 0;
  String text = "Lorem ipsum dolor sit amet, "
      "vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae,"
      " eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a,"
      " tellus. Phasellus viverra nu";

  final Utils _utils = Utils();
  int i = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    _utils.size(context);
    var _height = _utils.scale_Height;
    var _width = _utils.scale_Width;
    var word = list2[widget.ind].name;
    print(word);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: Text(
            list2[widget.ind].title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Spacer(flex: 3,),
              Center(
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 17,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 2,
                  ),
                  onRatingUpdate: (rating) {
                    // ignore: avoid_print
                    print(rating);
                    setState(() {
                      rate = rating;
                    });
                  },
                ),
              ),
              // const Spacer(flex: 1,),
              Text("(${rate.toString()})"),
              // const Spacer(flex: 3,)
            ],
          ),
          SizedBox(
              //color: Colors.orange,
              height: _height * 32,
              width: _width * 32,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: (val) {
                    setState(() {
                      image = val;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (ctx, i) {
                    if (word == "orange") {
                      return Image.asset(orange[i]);
                    } else if (word == "mango") {
                      return Image.asset(mango[i]);
                    } else if (word == "avocado") {
                      return Image.asset(avocado[i]);
                    } else {
                      return Image.asset(straw[i]);
                    }
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dot(
                color: image == 0 ? Colors.yellow.shade700 : Colors.grey,
                height: image == 0 ? _height * 0.6 : _height * 0.6,
                width: image == 0 ? _width * 3 : _width * 0.7,
              ),
              Dot(
                color: image == 1 ? Colors.yellow.shade700 : Colors.grey,
                height: image == 1 ? _height * 0.6 : _height * 0.6,
                width: image == 1 ? _width * 3 : _width * 0.7,
              ),
              Dot(
                color: image == 2 ? Colors.yellow.shade700 : Colors.grey,
                height: image == 2 ? _height * 0.6 : _height * 0.6,
                width: image == 2 ? _width * 3 : _width * 0.7,
              )
            ],
          ),
          SizedBox(
            height: _height * 3,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90.0, right: 90.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: _height * 6,
                  width: _width * 6,
                  child: const Icon(Icons.minimize_sharp),
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 0.3)),
                ),
                const Text("2kg"),
                Container(
                  height: _height * 6,
                  width: _width * 6,
                  child: const Icon(Icons.add),
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 0.3)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Row(
              children: const [
                Text(
                  "Description",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      "Total Price",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    Text(
                      list2[widget.ind].price,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: _height * 6,
                  width: _width * 34,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.yellow.shade700),
                      onPressed: () {},
                      child: const Text("Add to Cart")),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double height, width;
  final Color color;

  const Dot(
      {Key? key,
      required this.height,
      required this.width,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Utils _utils = Utils();

    _utils.size(context);
    var _height = _utils.scale_Height;
    var _width = _utils.scale_Width;
    return Container(
      margin: const EdgeInsets.all(10),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
