import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 246, 246, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.search),
                hintText: 'Search destinations',
              ),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 20)),
        Expanded(
            flex: 1,
            child: GestureDetector(
              child: Container(
                height: 60,
                width: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/filter_button.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            )),
      ],
    );
  }
}
