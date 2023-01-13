import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/home/components/header_with_searchbox.dart';
import 'package:plantapp/components/body.dart';

// import '../../../components/body.dart';
import '../screens/home/components/featured_plants.dart';
import '../screens/home/components/recomends_plants.dart';
import '../screens/home/components/title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width of your screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          titlewithmorebtn(
            title: "Recomended",
            // press: () {},
          ),
          RecomendsPlants(),
          titlewithmorebtn(
            title: "Featured Plants",
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
