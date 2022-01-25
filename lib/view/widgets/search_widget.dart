import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
    required FocusNode textFocusNode,
  })  : _textFocusNode = textFocusNode,
        super(key: key);

  final FocusNode _textFocusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          Expanded(
            child: TextField(
              focusNode: _textFocusNode,
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Search"),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: EdgeInsets.all(3),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
