import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
    required this.imgUrl,
  });

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      width: 278,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(22.46)),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imgUrl))),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13.0, right: 9),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              height: 32.05,
              width: 32.05,
              child: Center(
                child: Image.asset("assets/images/heart_icon.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
