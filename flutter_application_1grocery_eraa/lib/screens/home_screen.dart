import 'package:flutter/material.dart';
import 'package:flutter_application_1grocery_eraa/custom_widgets/custom_item.dart';
import 'package:flutter_application_1grocery_eraa/custom_widgets/custom_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exclusiveOffers = [
      (
        image: "assets/banana.png",
        title: "Organic Bananas",
        subtitle: "7pcs, Priceg",
        price: "\$4.99",
      ),
      (
        image: "assets/apple.png",
        title: "Red Apple",
        subtitle: "1kg, Priceg",
        price: "\$4.99",
      ),
    ];
    final bestSelling = [
      (
        image: "assets/redpepper.png",
        title: "Pell Red Pepper",
        subtitle: "1kg, Priceg",
        price: "\$4.99",
      ),
      (
        image: "assets/ginger.png",
        title: "Ginger",
        subtitle: "250 gm, Priceg",
        price: "\$4.99",
      ),
    ];
    final groceries = [
      (
        image: "assets/redpepper.png",
        title: "Beef Bone",
        subtitle: "1kg, Priceg",
        price: "\$4.99",
      ),
      (
        image: "assets/ginger.png",
        title: "Broiler Chicken",
        subtitle: "1kg, Priceg",
        price: "\$4.99",
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/carrot.png",
                  width: 38,
                  height: 43,
                  color: const Color(0xFFF3603F),
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xFF4C4F4D),
                      size: 24,
                    ),
                    SizedBox(width: 6),
                    Text(
                      "Dhaka, Banassre",
                      style: TextStyle(
                        color: Color(0xFF4C4F4D),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFF181B19),
                        size: 22,
                      ),
                      hintText: "Search Store",
                      hintStyle: const TextStyle(
                        color: Color(0xFF7C7C7C),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF2F3F2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color(0xFF181B19),
                          width: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  height: 115,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF181725),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "BANNER",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const CustomRow(titleRow: "Exclusive Offer"),
              const SizedBox(height: 14),
              SizedBox(
                height: 248,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: exclusiveOffers.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 14),
                  itemBuilder: (context, index) {
                    final item = exclusiveOffers[index];
                    return CustomItem(
                      imagePath: item.image,
                      title: item.title,
                      subtitle: item.subtitle,
                      price: item.price,
                      onAddTap: () {},
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const CustomRow(titleRow: "Exclusive Offer"),
              const SizedBox(height: 14),
              SizedBox(
                height: 248,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: bestSelling.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 14),
                  itemBuilder: (context, index) {
                    final item = bestSelling[index];
                    return CustomItem(
                      imagePath: item.image,
                      title: item.title,
                      subtitle: item.subtitle,
                      price: item.price,
                      onAddTap: () {},
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),
              const CustomRow(titleRow: "Groceries"),
              const SizedBox(height: 14),
              SizedBox(
                height: 248,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: groceries.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 14),
                  itemBuilder: (context, index) {
                    final item = groceries[index];
                    return CustomItem(
                      imagePath: item.image,
                      title: item.title,
                      subtitle: item.subtitle,
                      price: item.price,
                      onAddTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
