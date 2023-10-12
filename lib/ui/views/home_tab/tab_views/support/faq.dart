import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

class Faqs extends StatelessWidget {
  const Faqs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            InkWell(
              onTap: () => Get.back(),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios_sharp),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // const SizedBox(height: 50),
                  const Text(
                    "FAQs",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Your questions got answered",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 170,
                    child: ListView.separated(
                        // shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return const Faq();
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 10),
                        itemCount: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Faq extends StatefulWidget {
  const Faq({
    super.key,
  });

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      // height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                expanded = !expanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("How to loram ipsium dolor. ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black54)),
                  expanded
                      ? const Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.black54,
                        )
                      : const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black54,
                        ),
                ],
              ),
            ),
          ),
          // write a long text
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            height: expanded ? 80 : 0,
            child: const Text(
                "Lorem ipsum dolor sit amet, "
                "consectetur adipiscing elit. "
                "Suspendisse varius enim in eros elementum tristique. ",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black38)),
          )
        ],
      ),
    );
  }
}

class AnimatedListViewItem extends StatefulWidget {
  @override
  _AnimatedListViewItemState createState() => _AnimatedListViewItemState();
}

class _AnimatedListViewItemState extends State<AnimatedListViewItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: isSelected ? 200 : 100,
        // Adjust the height based on the selection state
        color: isSelected ? Colors.blue : Colors.green,
        child: Center(
          child: Text(
            isSelected ? 'Expanded' : 'Collapsed',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
