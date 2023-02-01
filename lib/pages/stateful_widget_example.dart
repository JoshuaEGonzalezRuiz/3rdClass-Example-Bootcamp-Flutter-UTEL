import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:third_class_example/utils.dart';

class StateFulWidgetExample extends StatefulWidget {
  const StateFulWidgetExample({Key? key}) : super(key: key);

  @override
  State<StateFulWidgetExample> createState() => _StateFulWidgetExampleState();
}

class _StateFulWidgetExampleState extends State<StateFulWidgetExample> {
  String apiUrl = "api.unsplash.com";
  String imageUrl = "";
  WidgetTemplates widgetTemplates = WidgetTemplates();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: imageUrl.isNotEmpty,
          child: widgetTemplates.containerTemplate(
              Image.network(
                  loadingBuilder: (context, image, loadingProgress) {
                    if (loadingProgress == null) return image;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null ?
                        loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                  height: 250,
                  imageUrl)
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(
                    width: 2, // the thickness
                    color: Colors.black // the color of the border
                )
            ),
            onPressed: () async {
          var url = await getRandomPhoto();
          setState(() {
            imageUrl = url;
          });
        }, child: Text(imageUrl.isEmpty ? "Obtener imagen" : "Nueva imagen"))
      ],
    );
  }

  Future<String> getRandomPhoto() async {
    String photoUrl = "";

    try {
      var response = await http.get(Uri.https(apiUrl, '/photos/random',
          {'client_id': 'se6zJEg8SyevIxoBiijy2B9zPwxUrDDI45FC0p00jXk', 'count': '1'}));

      if (response.statusCode == 200) {
        List<dynamic> jsonResponse =
            convert.jsonDecode(response.body);

        Map<String, dynamic> data = jsonResponse.first;

        Map<String, dynamic> imagesUrls = data.entries.firstWhere((element) => element.key == 'urls').value;

        photoUrl = imagesUrls.entries.firstWhere((element) => element.key == "regular").value as String;

        print(photoUrl);

      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    }

    return photoUrl;
  }
}
