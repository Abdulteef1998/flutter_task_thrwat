import 'package:flutter/material.dart';

class CustomNextButton extends StatelessWidget {
  final PageController pageController;
  final int pageCount;
  final int currentIndex;
  final VoidCallback? onFinish;

  const CustomNextButton({
    super.key,
    required this.pageController,
    required this.pageCount,
    required this.currentIndex,
    this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (currentIndex < pageCount - 1) {
          pageController.nextPage(
            duration: const Duration(milliseconds: 600),
            curve: Curves.linear,
          );
        } else {
          if (onFinish != null) {
            onFinish!();
          }
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          color: const Color(0xFF8D83FF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
