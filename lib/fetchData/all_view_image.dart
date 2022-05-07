import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';

class ImageOnly extends StatelessWidget {
  const ImageOnly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List argumentImage = ModalRoute.of(context)?.settings.arguments as List;

    return Scaffold(
        appBar: AppBar(
          foregroundColor: black,
          backgroundColor: HomeColors.appBar,
          title: const Text('All Image'),
        ),
        body: argumentImage.isNotEmpty
            ? PageView.builder(
                itemCount: argumentImage.length,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Column(
                    children: [
                      FittedBox(
                        child: Image.network(
                          argumentImage[pagePosition],
                          height: MediaQuery.of(context).size.height - 100,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 375, top: 3),
                        child: Text(
                          (pagePosition + 1).toString() +
                              "/" +
                              argumentImage.length.toString(),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  );
                },
              )
            : PageView.builder(
                itemCount: 1,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Image.asset('./images/nono.png'),
                    ],
                  );
                },
              ));
  }
}
