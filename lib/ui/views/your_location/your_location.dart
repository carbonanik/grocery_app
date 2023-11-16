import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/my_app_bar.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class YourLocation extends StatelessWidget {
  const YourLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locationItem = [
      LocationItem(
        Icons.home,
        "Home",
        "Amazon Park, Terminal 3, Potter road, New York, United State",
        width: MediaQuery.of(context).size.width * 0.9,
      ),
      LocationItem(
        Icons.local_post_office,
        "Home",
        "Amazon Park, Terminal 3, Potter road, New York, United State",
        width: MediaQuery.of(context).size.width * 0.9,
      ),
      LocationItem(
        Icons.home,
        "Home",
        "Amazon Park, Terminal 3, Potter road, New York, United State",
        width: MediaQuery.of(context).size.width * 0.9,
      ),
    ];
    return Scaffold(
      appBar: const MyAppBar(title: "Your Location"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: backgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: Dimension.width(20),
                      ),
                      hintText: "Search a new address",
                      hintStyle: const TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      //
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: Dimension.width(20),
                      ),
                      hintText: "Your Current Location",
                      hintStyle: TextStyle(
                        color: accentColor.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: accentColor.withOpacity(.5),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: accentColor.withOpacity(.5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Saved Locations",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      itemCount: locationItem.length,
                      itemBuilder: (context, index) {
                        return locationItem[index];
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 20);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget LocationItem(IconData icon, String title, String subtitle,
    {width = double.infinity}) {
  return Container(
    width: width,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: accentColor,
        ),
        const SizedBox(width: 20),
        Container(
          width: width != double.infinity ? width * 0.7 : width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
