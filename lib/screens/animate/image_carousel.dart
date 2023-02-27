import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarouselScreen extends StatefulWidget {
  const ImageCarouselScreen({super.key});

  @override
  State<ImageCarouselScreen> createState() => _ImageCarouselScreenState();
}

class _ImageCarouselScreenState extends State<ImageCarouselScreen> {
  List animals = [
    "https://i.natgeofe.com/n/914ced12-24d0-4405-889e-4290b9f9009d/gray-wolf_thumb_3x2.JPG",
    "https://i.natgeofe.com/n/db6b80f3-a61c-466a-9438-673937e9beca/10771096.jpg?w=1024&h=735",
    "https://i.natgeofe.com/n/4c5fbe41-bf79-4974-9251-f27046f080ec/4341248.jpg",
    "https://i.natgeofe.com/n/dd8843a2-8ec3-4357-9a76-6d20d876209a/01-hyenas-nationalgeographic_1742911_16x9.jpg",
    "https://static.nationalgeographic.co.uk/files/styles/image_3200/public/BF5FPF.jpg?w=1600&h=900",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Image Carousel"),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
              initialPage: 0,
            ),
            items: [1, 2, 3, 4, 5].map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: const BoxDecoration(color: Colors.black),
                      child: Column(
                        children: [
                          Image.network(animals[i - 1],
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              fit: BoxFit.cover),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Beast $i',
                            style: const TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
