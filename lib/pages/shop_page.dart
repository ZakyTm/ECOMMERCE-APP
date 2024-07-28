import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Search Bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.white60, borderRadius: BorderRadius.circular(10)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search for products"),
              Icon(Icons.search),
            ],
          ),
        ),
        //Message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'Everyone flies... Some flies longer than others..',
            style: TextStyle(color: Colors.grey[700], fontSize: 18),
          ),
        ),
        //List of products
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Products 🔥🔥 ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 24)),
              Text('View All',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 16)),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              //Create a Shoe
              itemBuilder: (context, index) {
                Shoe shoe = Shoe(
                  name: 'Sport Shoe',
                  price: "200",
                  imagePath: 'lib/images/shoe1.jpeg',
                  description: "This is a description of the shoe",
                );
                return ShoeTile(shoe: shoe);
              }),
        ),
      ],
    );
  }
}
