import 'package:ecommerce_store/common/widgets/appbar/app_tab_bar.dart';
import 'package:ecommerce_store/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_store/common/widgets/brands/brand_card.dart';
import 'package:ecommerce_store/common/widgets/brands/brand_show_case.dart';
import 'package:ecommerce_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_store/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_store/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_store/features/shop/screens/home/widgets/category_tab.dart';
import 'package:ecommerce_store/utils/constants/app_colors.dart';
import 'package:ecommerce_store/utils/constants/app_image.dart';
import 'package:ecommerce_store/utils/constants/sizes.dart';
import 'package:ecommerce_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            CartCounterIcon(onPressed: () {}, iconColor: AppColors.white),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIscrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: HelperFunction.isDarkMode(context)
                    ? AppColors.black
                    : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      const SearchContainer(
                        text: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      //FEATURED BRANDS
                      SeactionHeading(
                        title: "Featured Brands",
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
                      GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 88,
                        itemBuilder: (context, index) {
                          return const BrandCard(showBorder: false);
                        },
                      )
                    ],
                  ),
                ),
                //TABS.....
                bottom: const AppTabBar(tabs: [
                  Tab(child: Text("Sports")),
                  Tab(child: Text("Furniture")),
                  Tab(child: Text("Elctronics")),
                  Tab(child: Text("Clothes")),
                  Tab(child: Text("Cosmetics")),
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
