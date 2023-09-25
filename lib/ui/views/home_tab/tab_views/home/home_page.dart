import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/home/home_category.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../../../../model/product/product.dart';
import '../../../../../provider/category/category_api_provider.dart';
import '../../../../../provider/product/product_api_provider.dart';
import '../../../../../route/route_helper.dart';
import '../../../../widget/product_item.dart';
import '../../../../widget/my_action_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    List<String> featuredImages = [
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207526/samples/food/spices.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207539/cld-sample-4.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207516/samples/food/dessert.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207518/samples/food/pot-mussels.jpg',
    ];

    return Scaffold(
      floatingActionButton: const MyActionButton(
        // count: cartDatabaseController.totalQuantity.value,
        count: 0,
      ),
      body: Container(
        color: backgroundColor,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            /// top selector
            _buildHeader(),
            _sliverSpace(),

            /// image gallery
            _buildImageGallery(featuredImages),
            _sliverSpace(height: 40),

            /// search box
            _buildSearchBox(),
            _sliverSpace(),

            /// Category Text
            _buildSectionHeader('Category'),

            /// category list
            _buildCategoryList(),
            _sliverSpace(),

            /// popular text
            _buildSectionHeader('Popular'),

            /// popular list
            _buildProductGrid(),
            _sliverSpace()
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCategoryList() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.height(12)),
          // color: Colors.green,
        ),
        child: Consumer(builder: (context, ref, child) {
          final responseAsyncValue = ref.watch(getCategoriesProvider);
          return responseAsyncValue.map(
              data: (_) => GridView.count(
                    crossAxisCount: 2,
                    scrollDirection: Axis.horizontal,
                    mainAxisSpacing: Dimension.width(10),
                    crossAxisSpacing: Dimension.height(10),
                    childAspectRatio: .4,
                    children: List.generate(
                      _.value.length,
                      (index) {
                        final category = _.value[index];
                        return HomeCategory(
                          category: category,
                          index: index,
                        );
                      },
                    ),
                  ),
              error: (_) => Text(_.error.toString()),
              loading: (_) => const Center(child: CircularProgressIndicator()));
        }),
      ),
    );
  }

  SliverToBoxAdapter _buildSearchBox() {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.height(12)),
        ),
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search',
              prefixIcon: Icon(
                Icons.search,
                color: accentColor,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimension.height(10)),
                  borderSide:
                      const BorderSide(width: 1.0, color: Colors.green)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimension.height(10)),
                  borderSide:
                      const BorderSide(width: 1.0, color: Colors.white)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimension.height(20)),
              )),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildImageGallery(List<String> featuredImages) {
    return SliverToBoxAdapter(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: Dimension.height(20)),
        height: Dimension.height(150),
        width: Dimension.width(300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.height(12)),
        ),
        child: PageView.builder(
            itemCount: featuredImages.length,
            // controller: PageController(viewportFraction: .85),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(10)),
                margin: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: index.isOdd
                      ? Colors.lightGreen.shade200
                      : Colors.green.shade200,
                  image: DecorationImage(
                    image: NetworkImage(featuredImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
      ),
    );
  }

  SliverToBoxAdapter _buildHeader() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
            left: Dimension.width(20),
            right: Dimension.width(20),
            top: Dimension.height(30)),
        child: Row(
          children: [
            InkWell(
              onTap: () => Get.toNamed(RouteHelper.getYourLocation()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Amazon sparklers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimension.width(20),
                            color: Colors.black),
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  SizedBox(height: Dimension.height(8)),
                  Text('Terminal 3 potter road new york',
                      style: TextStyle(
                          fontSize: Dimension.width(16), color: Colors.grey)),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () => Get.toNamed(RouteHelper.getWallet()),
              child: Icon(
                Icons.wallet,
                size: Dimension.width(45),
                color: accentColor,
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _sliverSpace({double height = 30}) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: Dimension.height(height),
      ),
    );
  }

  SliverToBoxAdapter _buildSectionHeader(String text) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.height(12)),
          // color: Colors.green,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: Dimension.height(20),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Dimension.height(20),
            ),
          ],
        ),
      ),
    );
  }

  SliverPadding _buildProductGrid() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
      sliver: Consumer(
        builder: (context, ref, child) {
          final responseAsyncValue = ref.watch(getProductsProvider);
          return responseAsyncValue.map(
            data: (data) => SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: Dimension.width(20),
              crossAxisSpacing: Dimension.width(20),
              childAspectRatio: .699,
              children: List.generate(data.value.length, (index) {
                final Product item = data.value[index];
                return ProductItem(
                  product: item,
                );
              }),
            ),
            error: (_) => SliverToBoxAdapter(child: Text(_.error.toString())),
            loading: (_) => const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }
}

class CustomSilverHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;

  CustomSilverHeaderDelegate(this.minExtent, this.maxExtent);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/delivery_man.png',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black45],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [.5, 1.0],
            ),
          ),
        ),
        Positioned(
            left: Dimension.width(16),
            right: Dimension.width(16),
            bottom: Dimension.height(16),
            child: Text(
              'Lorem ipsome',
              style: TextStyle(
                fontSize: Dimension.height(32),
                color: Colors.white.withOpacity(
                  titleOpacity(shrinkOffset),
                ),
              ),
            ))
      ],
    );
  }

  double titleOpacity(double shrinkOffset) {
    return 1 - max(0.0, shrinkOffset) / maxExtent;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
