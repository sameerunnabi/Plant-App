import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class titlewithmorebtn extends StatelessWidget {
  const titlewithmorebtn({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitlewithcustomUnderline(
            text: title,
          ),
          Spacer(),
          TextButton(
              style: ButtonStyle(
                // shadowColor: Colors.black45,
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20)),

              onPressed: () {},
              child: Text(
                "more",
                style: TextStyle(color: Colors.black38),
              ))
        ],
      ),
    );
  }
}

class TitlewithcustomUnderline extends StatelessWidget {
  const TitlewithcustomUnderline({
    Key? key, required this.text,
    // required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColour.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
