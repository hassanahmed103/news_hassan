import 'package:flutter/material.dart';
import '../model/categroy_model.dart';
import 'catrgroy_card.dart';

class CategroyListView extends StatelessWidget {
  const CategroyListView({
    super.key,
  });
 final List<CategroyModel>categries=const[
CategroyModel(name: 'sport' , images: 'assets/business.avif'),
CategroyModel(name: 'sport' , images: 'assets/business.avif'),
CategroyModel(name: 'sport' , images: 'assets/business.avif'),
CategroyModel(name: 'sport' , images: 'assets/business.avif'),
CategroyModel(name: 'sport' , images: 'assets/business.avif'),
CategroyModel(name: 'sport' , images: 'assets/business.avif'),
CategroyModel(name: 'sport' , images: 'assets/business.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
     /* padding: const EdgeInsets.only(left:18),*/
       child:ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categries.length,
            itemBuilder: (context, index) {
              return  CategoryCard(categroy: categries[index],);
            }),
    );
  }
}