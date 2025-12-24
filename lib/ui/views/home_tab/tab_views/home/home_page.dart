import 'dart:math';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:get/get.dart';

import 'package:instant_grrocery_delivery/provider/cart/cart_provider.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/home/home_category.dart';
import 'package:instant_grrocery_delivery/ui/widget/opps_no_data.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

import '../../../../../model/product/product.dart';
import '../../../../../provider/category/category_api_provider.dart';
import '../../../../../provider/product/product_api_provider.dart';

import '../../../../widget/buttons/my_action_button.dart';
import '../../../../widget/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> featuredImages = [
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207526/samples/food/spices.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207539/cld-sample-4.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207516/samples/food/dessert.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207518/samples/food/pot-mussels.jpg',
    ];

    return Scaffold(
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          final cartDataModel = ref.watch(cartProvider);
          return MyActionButton(count: cartDataModel.cartCount());
        },
      ),
      body: Container(
        color: backgroundColor,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            /// top selector
            _buildHeader(context),
            _sliverSpace(context: context),

            /// image gallery
            _buildImageGallery(context, featuredImages),
            _sliverSpace(context: context, height: 40),

            /// search box
            _buildSearchBox(context),
            _sliverSpace(context: context),

            /// Category Text
            _buildSectionHeader(context, 'Category'),

            /// category list
            _buildCategoryList(context),
            _sliverSpace(context: context),

            /// popular text
            _buildSectionHeader(context, 'Popular'),

            /// popular list
            _buildProductGrid(context),
            _sliverSpace(context: context),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCategoryList(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: context.w(20)),
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.h(12)),
        ),
        child: Consumer(
          builder: (context, ref, child) {
            final responseAsyncValue = ref.watch(getCategoriesProvider);
            return responseAsyncValue.map(
              data: (data) => data.value.isEmpty
                  ? const OopsNoData()
                  : GridView.count(
                      crossAxisCount: 2,
                      scrollDirection: Axis.horizontal,
                      mainAxisSpacing: context.w(10),
                      crossAxisSpacing: context.h(10),
                      childAspectRatio: .4,
                      children: List.generate(data.value.length, (index) {
                        final category = data.value[index];
                        return HomeCategory(category: category, index: index);
                      }),
                    ),
              error: (error) => const Center(child: OopsNoData()),
              loading: (loading) =>
                  const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildSearchBox(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: context.w(20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.h(12)),
        ),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search, color: accentColor),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(context.h(10)),
              borderSide: const BorderSide(width: 1.0, color: Colors.green),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(context.h(10)),
              borderSide: const BorderSide(width: 1.0, color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(context.h(20)),
            ),
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildImageGallery(
    BuildContext context,
    List<String> featuredImages,
  ) {
    return SliverToBoxAdapter(
      child: Container(
        height: context.h(150),
        width: context.w(300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.h(12)),
        ),
        child: PageView.builder(
          itemCount: featuredImages.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: context.w(10)),
              margin: EdgeInsets.symmetric(horizontal: context.w(20)),
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
          },
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          left: context.w(20),
          right: context.w(20),
          top: context.h(30),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                // Get.toNamed(RouteHelper.getYourLocation());
                context.push('/your-location');
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Amazon sparklers',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: context.w(20),
                          color: Colors.black,
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  SizedBox(height: context.h(8)),
                  Text(
                    'Terminal 3 potter road new york',
                    style: TextStyle(
                      fontSize: context.w(16),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                // Get.toNamed(RouteHelper.getWallet());
                context.push('/wallet');
              },
              child: Icon(
                Icons.wallet,
                size: context.w(45),
                color: accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _sliverSpace({
    required BuildContext context,
    double height = 30,
  }) {
    return SliverToBoxAdapter(child: SizedBox(height: context.h(height)));
  }

  SliverToBoxAdapter _buildSectionHeader(BuildContext context, String text) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: context.w(20)),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(context.h(12)),
        // color: Colors.green,
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: context.h(20)),
          ],
        ),
      ),
    );
  }

  SliverPadding _buildProductGrid(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: context.w(20)),
      sliver: Consumer(
        builder: (context, ref, child) {
          final responseAsyncValue = ref.watch(getPopularProductProvider);
          return responseAsyncValue.map(
            data: (data) => data.value.isEmpty
                ? const SliverToBoxAdapter(child: OopsNoData())
                : SliverGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: context.w(20),
                    crossAxisSpacing: context.w(20),
                    childAspectRatio: .699,
                    children: List.generate(data.value.length, (index) {
                      final Product item = data.value[index];
                      return ProductItem(product: item);
                    }),
                  ),
            error: (_) => const SliverToBoxAdapter(child: OopsNoData()),
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
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset('assets/images/delivery_man.png', fit: BoxFit.cover),
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
          left: context.w(16),
          right: context.w(16),
          bottom: context.h(16),
          child: Text(
            'Lorem ipsome',
            style: TextStyle(
              fontSize: context.h(32),
              color: Colors.white.withOpacity(titleOpacity(shrinkOffset)),
            ),
          ),
        ),
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
