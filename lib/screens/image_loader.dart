import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageLoader extends StatelessWidget {
  const ImageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: orientation == Orientation.portrait
                ? Image.asset('assets/local_image.png') // Gambar lokal
                : CachedNetworkImage(
                    imageUrl: 'http://4.bp.blogspot.com/-gv7UbpjAkhE/VK6ROuqpkeI/AAAAAAAAWrE/98qIpolt0U0/s1600/gambar%2Badit-sopo%2Bdan%2Bjarwo12.png',
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
          );
        },
      ),
    );
  }
}