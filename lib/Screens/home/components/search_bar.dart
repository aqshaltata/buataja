import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 50.0,
              height: 50.0,
              margin: EdgeInsets.only(right:20),
              color: Colors.orange,
              padding: EdgeInsets.all(kDefaultPadding * 0.3),
              child: Icon(Icons.menu_rounded, size: 20,color: Colors.black87),
            ),
          ),
        ),

        Expanded(
          flex: 1,
          
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Cari furniture...',
              hintStyle: TextStyle(
                color: kPrimaryColor,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              prefixIcon: SvgPicture.asset('assets/icons/search.svg', fit: BoxFit.scaleDown),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kSecondaryColor.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(0)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kSecondaryColor.withOpacity(0.1)),
                borderRadius: BorderRadius.circular(0)
              ),
            ),
          ),
        ),
      ],
    );
  }
}