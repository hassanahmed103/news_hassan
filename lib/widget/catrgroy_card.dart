import 'package:flutter/material.dart';
import 'package:news_hassan/model/categroy_model.dart';

import '../pages/categroy_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categroy,
  });

  final CategroyModel categroy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return CategroyView(categroy: categroy.name,);
      }));
    },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            /*   image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(categroy.image),
              ),,*/
            borderRadius: BorderRadius.circular(22),
          ),
          child: Center(
            child: Text(
              categroy.name,
              style: const TextStyle(color: Colors.cyan),
            ),
          ),
        ),
      ),
    );
  }
}
