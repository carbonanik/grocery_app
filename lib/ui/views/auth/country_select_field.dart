import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/countries.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/shared/types.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

class CountrySelectField extends StatefulWidget {
  const CountrySelectField({
    super.key,
  });

  @override
  State<CountrySelectField> createState() => _CountrySelectFieldState();
}

class _CountrySelectFieldState extends State<CountrySelectField> {

  String filterValue = 'b';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.h(20)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w(20)),
          child: Text(
            'Country',
            style: TextStyle(
              fontSize: context.w(15),
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(height: context.h(10)),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.w(20),
          ),
          child: TextFormField(
            readOnly: true,
            onTap: () {
              Dialogs.materialDialog(
                  color: Colors.white,
                  title: 'Select your country',
                  customView: Expanded(
                    child: CustomScrollView(
                      slivers: [
                        SliverPersistentHeader(
                          delegate: SearchBoxDelegate(
                            onChanged: (value) {
                              setState(() {
                                filterValue = value;
                              });
                            }
                          ),
                          pinned: true,
                        ),
                        SliverList(
                          delegate: SliverChildListDelegate(
                            Country.countries.values.where(
                              (country) => country.name.toLowerCase().contains(filterValue),
                            )
                                .map(
                                  (country) => Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: context.w(20),
                                      vertical: context.h(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          country.flag,
                                          style: TextStyle(
                                            fontSize: context.w(15),
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 220,
                                          child: Text(
                                            country.name,
                                            style: TextStyle(
                                              fontSize: context.w(15),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                  customViewPosition: CustomViewPosition.BEFORE_ACTION,
                  context: context,
                  actions: [
                    IconsButton(
                      onPressed: () {},
                      text: 'Ok',
                      iconData: Icons.done,
                      color: accentColor,
                      textStyle: const TextStyle(color: Colors.white),
                      iconColor: Colors.white,
                    ),
                  ]);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: context.w(20),
              ),
              hintText: 'Select your country',
              hintStyle: const TextStyle(
                color: Colors.black12,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.w(5)),
                borderSide: const BorderSide(
                  color: Colors.black12,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.w(5)),
                borderSide: const BorderSide(
                  color: accentColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class SearchBoxDelegate extends SliverPersistentHeaderDelegate {
  void Function(String) onChanged;

  SearchBoxDelegate({
    required this.onChanged
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white, // Set the background color of the search box
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Search', // Set the placeholder text
          border: InputBorder.none, // Remove the border
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
        ),
        // controller: controller,
        onChanged: onChanged,
      ),
    );
  }

  @override
  double get maxExtent =>
      40; // Set the maximum extent (height) of the search box

  @override
  double get minExtent =>
      40; // Set the minimum extent (height) of the search box

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false; // Return false if the search box should not rebuild on changes
  }
}