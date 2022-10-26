import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://www.sportsdestinations.com/sites/sportsdestinations.com/files/sports_destination_management/nodes/2015/8968/IMG.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDAzXafoV2RDPvTnZ9jc11D_AM1Tla6vUIviA3HoyNQ48_5CaMrw91K4yr2n9T1d3-RQc&usqp=CAU',
    'https://www.sportsdestinations.com/sites/sportsdestinations.com/files/sports_destination_management/nodes/2015/8968/IMG.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDAzXafoV2RDPvTnZ9jc11D_AM1Tla6vUIviA3HoyNQ48_5CaMrw91K4yr2n9T1d3-RQc&usqp=CAU',
    'https://www.sportsdestinations.com/sites/sportsdestinations.com/files/sports_destination_management/nodes/2015/8968/IMG.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDAzXafoV2RDPvTnZ9jc11D_AM1Tla6vUIviA3HoyNQ48_5CaMrw91K4yr2n9T1d3-RQc&usqp=CAU',
    'https://www.sportsdestinations.com/sites/sportsdestinations.com/files/sports_destination_management/nodes/2015/8968/IMG.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDAzXafoV2RDPvTnZ9jc11D_AM1Tla6vUIviA3HoyNQ48_5CaMrw91K4yr2n9T1d3-RQc&usqp=CAU',
    'https://www.sportsdestinations.com/sites/sportsdestinations.com/files/sports_destination_management/nodes/2015/8968/IMG.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDAzXafoV2RDPvTnZ9jc11D_AM1Tla6vUIviA3HoyNQ48_5CaMrw91K4yr2n9T1d3-RQc&usqp=CAU',
    'https://www.sportsdestinations.com/sites/sportsdestinations.com/files/sports_destination_management/nodes/2015/8968/IMG.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDAzXafoV2RDPvTnZ9jc11D_AM1Tla6vUIviA3HoyNQ48_5CaMrw91K4yr2n9T1d3-RQc&usqp=CAU',
    'https://www.sportsdestinations.com/sites/sportsdestinations.com/files/sports_destination_management/nodes/2015/8968/IMG.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDAzXafoV2RDPvTnZ9jc11D_AM1Tla6vUIviA3HoyNQ48_5CaMrw91K4yr2n9T1d3-RQc&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your-Orders',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See all',
                style: TextStyle(
                  fontSize: 14,
                  color: GlobalVariable.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(image: list[index]);
            },
          ),
        ),
      ],
    );
  }
}
