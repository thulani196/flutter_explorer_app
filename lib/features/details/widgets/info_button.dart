// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoButton extends StatelessWidget {
  dynamic args = Get.arguments;
  bool isRating;

  InfoButton({super.key, required this.args, required this.isRating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Container(
            height: 41,
            width: 41,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 9,
                    offset: const Offset(0, 5),
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: Theme.of(context).primaryColorLight),
            child: isRating
                ? const Icon(
                    size: 30,
                    Icons.star,
                    color: Colors.amber,
                  )
                : const Icon(
                    size: 30,
                    Icons.airplanemode_active,
                    color: Colors.amber,
                  ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isRating ? "${args.rating}" : "${args.visits}",
              style: const TextStyle(
                  color: Color.fromRGBO(94, 98, 130, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            Text(isRating ? "Rating" : "Visits",
                style: const TextStyle(
                    color: Color.fromRGBO(94, 98, 130, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 10))
          ],
        )
      ],
    );
  }
}
