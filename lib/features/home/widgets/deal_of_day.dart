import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10),
          child: const Text(
            'Deal of the day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://images.prismic.io/mystique/983eac5a-23be-4b1f-af1c-791d6931f760_IMG_1.jpg?auto=compress%2Cformat&w=540&q=75&fit=crop&ar=16%3A9&fm=webp&exp=-10&rect=0,0,1600,999',
          height: 235,
          fit: BoxFit.cover,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            '\$${100}',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, right: 40, top: 5),
          child: Text(
            'Gonl',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://i.ytimg.com/vi/RbJg7YLqJk8/hq720_live.jpg?sqp=CNj_oZgG-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBZGVFTVnVDZEywsMEABI0JD7kC3Q',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://i.ytimg.com/vi/RbJg7YLqJk8/hq720_live.jpg?sqp=CNj_oZgG-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBZGVFTVnVDZEywsMEABI0JD7kC3Q',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://i.ytimg.com/vi/RbJg7YLqJk8/hq720_live.jpg?sqp=CNj_oZgG-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBZGVFTVnVDZEywsMEABI0JD7kC3Q',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://i.ytimg.com/vi/RbJg7YLqJk8/hq720_live.jpg?sqp=CNj_oZgG-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBZGVFTVnVDZEywsMEABI0JD7kC3Q',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://i.ytimg.com/vi/RbJg7YLqJk8/hq720_live.jpg?sqp=CNj_oZgG-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBZGVFTVnVDZEywsMEABI0JD7kC3Q',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(color: Colors.cyan[800]),
          ),
        )
      ],
    );
  }
}
