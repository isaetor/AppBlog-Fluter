import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _showfilter = true;
  int _selectedIndex = 0;

  List<String> categories = [
    "جدیدترین ها",
    "محبوب ترین ها",
    "پربازدید ترین ها",
    "اینترنت اشیا",
    "بازاریابی",
    "بازی رایانه ای",
    "برنامه نویسی",
    "بهره وری",
    "تاریخ",
    "خانواده",
    "حقوقی",
    "همه دسته ها",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    enableSuggestions: true,
                    autocorrect: true,
                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xff333333)),
                    onChanged: (value) {},
                    cursorColor: const Color(0xff1da1f2),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(14),
                        suffixIcon: Padding(
                          padding: const EdgeInsetsDirectional.all(12),
                          child: SvgPicture.asset(
                            'assets/icons/search.svg',
                            // ignore: deprecated_member_use
                            color: Colors.black54,
                          ),
                        ),
                        border: InputBorder.none,
                        hintText: 'جست و جو',
                        hintStyle: const TextStyle(color: Colors.black54)),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showfilter = !_showfilter;
                  });
                },
                child: Container(
                  width: 49,
                  height: 49,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    'assets/icons/filter.svg',
                    // ignore: deprecated_member_use
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          height: _showfilter ? 48 : 0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              double marginLeft = 6, marginRight = 6;
              if (index == 0) {
                marginRight = 20;
              } else if (index == categories.length - 1) {
                marginLeft = 20;
              }
              return Container(
                margin: EdgeInsets.only(
                    left: marginLeft, right: marginRight, top: 12),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    decoration: BoxDecoration(
                      color: index == categories.length - 1
                          ? Colors.transparent
                          : _selectedIndex == index
                              ? const Color(0xff1da1f2)
                              : Colors.white,
                      border: index == categories.length - 1
                          ? Border.all(width: 1, color: const Color(0xff1da1f2))
                          : Border.all(width: 0, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                          color: index == categories.length - 1
                              ? const Color(0xff1da1f2)
                              : _selectedIndex == index
                                  ? Colors.white
                                  : null),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
