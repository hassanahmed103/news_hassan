import 'package:flutter/material.dart';
import 'package:news_hassan/model/artical_model.dart';


class NewsTitle extends StatelessWidget {
  const NewsTitle({
    super.key, required this.articalModel,
  });
final  ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
          articalModel.image??'assets/technology.jpeg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
          Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 15,
        ),
          Text(
           articalModel.Subtitle??'sdiuagfiuas',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 14)),
      ],
    );
  }
}
