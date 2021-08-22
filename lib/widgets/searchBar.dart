import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Rechercher",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic)),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () => {},
          child: Icon(
            Icons.search,
            size: 37.5,
          ),
          style: ButtonStyle(
              padding:
              MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(12)),
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
        )
      ],
    );
  }
}
