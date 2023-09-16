import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import 'my_separetor.dart';

class CouponItem extends StatelessWidget {
  CouponItem({
    Key? key, this.height
  }) : super(key: key);

  double? height;

  @override
  Widget build(BuildContext context) {
    height ??= Dimension.height(140);
    return Container(
      margin: EdgeInsets.only(bottom: Dimension.height(20)),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height!/2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimension.width(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: Dimension.width(20), top: Dimension.height(8)),
                      child: Text('Get 10% OFF',
                          style: TextStyle(
                            fontSize: Dimension.width(18),
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Dimension.width(20), right: Dimension.width(20), top: Dimension.height(8)),
                      child: Text('Lorteas asjdfn asdkfj asdjfh urtyg bnjf3 4io hnou dfyhergf vcphj niysdb eruytgflghtpj fgjdfg7edrkldfg ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: Dimension.width(12),
                            fontWeight: FontWeight.w500,
                            color: Colors.black38,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                  color: Colors.white,
                  child: const MySeparator(
                    color: Colors.black12,
                  )),
              Container(
                height: height!/2 - Dimension.height(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimension.width(10)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: Dimension.width(20), top: Dimension.height(8)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(backgroundColor),
                          foregroundColor: MaterialStateProperty.all(Colors.black54),
                            // shape: MaterialStateProperty.all(StadiumBorder()),
                          side: MaterialStateProperty.all(BorderSide(
                            color: Colors.black12,
                            width: 1,
                          )),
                        ),
                        onPressed: () {},
                        child: Text('GET50GH',
                            style: TextStyle(
                              fontSize: Dimension.width(18),
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: Dimension.width(20), top: Dimension.height(10)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(accentColor),
                        ),
                        onPressed: () {},
                        child: Text('APPLY',
                            style: TextStyle(
                              fontSize: Dimension.width(18),
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: Dimension.width(-10),
            top: height!/2 - 8.8,
            child: Container(
              height: Dimension.width(20),
              width: Dimension.width(20),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(Dimension.width(10)),
              ),
            ),
          ),
          Positioned(
            right: Dimension.width(-10),
            top: height!/2 - 8.8,
            child: Container(
              height: Dimension.width(20),
              width: Dimension.width(20),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(Dimension.width(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
