import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/app_strings.dart';
import 'package:http/http.dart' as http;
import '../../models/album.dart';
import 'dart:convert';
import 'package:provider/provider.dart';

class test extends ChangeNotifier {}

class BasicHttp extends StatefulWidget {
  const BasicHttp({super.key});

  @override
  State<BasicHttp> createState() => _BasicHttp();
}

class _BasicHttp extends State<BasicHttp> {
  late Future<Album> futureAlbum;

  Future<Album> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(AppStrings.apiError);
    }
  }

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
