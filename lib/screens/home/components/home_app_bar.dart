import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.grey.shade200,
    toolbarHeight: 73,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.only(right: 4),
      child: SvgPicture.asset('assets/images/logo_text.svg'),
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: Container(
          width: 49,
          height: 49,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: SvgPicture.asset(
            'assets/icons/notification.svg',
            // ignore: deprecated_member_use
            color: Colors.black54,
          ),
        ),
      ),
      const SizedBox(width: 20)
    ],
  );
}
