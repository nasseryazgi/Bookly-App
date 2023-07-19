import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.fill,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}


/*
  child: Container(
        height: 100,
        //  width: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            //color: Colors.black,
            image:  DecorationImage(
                fit: BoxFit.fill, 
                image: CachedNetworkImageProvider())),
      ),
*/